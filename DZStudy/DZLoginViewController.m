//
//  DZLoginViewController.m
//  DZStudy
//
//  Created by 杨东正 on 2017/7/10.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import "DZLoginViewController.h"
#import "DZPopTransition.h"
#import "UIViewController+Custom.h"
#import "ViewController.h"

@interface DZLoginViewController ()<UINavigationControllerDelegate, UIViewControllerTransitioningDelegate>

@end

@implementation DZLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"登录";
    
    [self setCustomNavigationBackItem];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *pushButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [pushButton setTitle:@"点我" forState:UIControlStateNormal];
    pushButton.frame  = CGRectMake(100, 100, 100, 100);
    [pushButton addTarget:self action:@selector(pushBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushButton];
    
    //设置代理
    self.navigationController.delegate = self;
}

- (void)didClickCommonBackButton:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)pushBtn {
    self.navigationController.delegate = self;
    ViewController *loginView = [ViewController new];
    [self.navigationController pushViewController:loginView animated:YES];
}

-(id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC{
    if (operation == UINavigationControllerOperationPop){ // 就是在这里判断是哪种动画类型
        return [[DZPopTransition alloc] init]; // 返回push动画的类
    }else{
        return nil;
    }
}

@end
