//
//  DZBaseViewController.m
//  DZStudy
//
//  Created by 杨东正 on 2017/3/21.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import "DZBaseViewController.h"
#import "DZBaseViewModel.h"
#import "DZLoginViewController.h"
#import "TransPushTool.h"
#import "TransPopTool.h"
#import "DZPushTransition.h"
#import <SafariServices/SFSafariViewController.h>

static const CGFloat kMargin = 15.f;

@interface DZBaseViewController () <UIViewControllerTransitioningDelegate, UINavigationControllerDelegate>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation DZBaseViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
//        self.dataSource = @"";
    }
    return self;
}

- (void)loadView {
    [super loadView];
    
    [self buildTableView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    self.tableView.frame = self.view.bounds;
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([UITableViewCell class]) forIndexPath:indexPath];
    DZBaseViewModel *propertyModel = [self.dataSource objectAtIndex:indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text = propertyModel.title;
    cell.textLabel.font = [UIFont systemFontOfSize:14.f];
    cell.textLabel.textColor = [UIColor blueColor];
    return cell;
}

#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 34.f;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
//    self.navigationController.delegate = self;
//    DZLoginViewController *loginView = [DZLoginViewController new];
//    [self.navigationController pushViewController:loginView animated:YES];
//    
//    return;
    
    DZBaseViewModel *model = [self.dataSource objectAtIndex:indexPath.row];
    if (model.controllerName) {
        Class class = NSClassFromString(model.controllerName);
        UIViewController *controller = [class new];
        controller.title = model.title;
        [self.navigationController pushViewController:controller animated:YES];
    } else if (model.webURL) {
        DZBaseViewModel *model = [self.dataSource objectAtIndex:indexPath.row];
        SFSafariViewController *safariVC = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:model.webURL]];
//        safariVC.delegate = self;
        [self presentViewController:safariVC animated:YES completion:nil];
    } else if (model.methodName) {
        
    }
}

#pragma mark - Builder
- (void)buildTableView {
    self.tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
    self.tableView.tableFooterView = [[UIView alloc] init];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    self.tableView.separatorInset = UIEdgeInsetsMake(0.f, kMargin, 0.f, kMargin);
//    self.tableView.separatorColor = [UIColor grayColor];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.view addSubview:self.tableView];
}

-(id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC{
    if (operation == UINavigationControllerOperationPush){ // 就是在这里判断是哪种动画类型
        return [[DZPushTransition alloc] init]; // 返回push动画的类
    }else{
        return nil;
    }
}

@end
