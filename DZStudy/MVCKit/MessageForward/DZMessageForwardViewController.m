//
//  DZMessageForwardViewController.m
//  DZStudy
//
//  Created by 杨东正 on 2017/8/3.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import "DZMessageForwardViewController.h"
#import "DZBaseViewModel.h"
#import <SafariServices/SFSafariViewController.h>
#import "ADCHero.h"

@interface DZMessageForwardViewController () <SFSafariViewControllerDelegate>

@end

@implementation DZMessageForwardViewController

- (instancetype)init {
    self =  [super init];
    if (self) {
        NSMutableArray *dataArray = [NSMutableArray array];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"参考链接" webURL:@"http://www.jianshu.com/p/367b2f6b461f"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"点我" webURL:@"http://www.jianshu.com/p/367b2f6b461f"]];
        self.dataSource = dataArray;
    }
    return self;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    if (indexPath.row == 0)
    {
        DZBaseViewModel *model = [self.dataSource objectAtIndex:indexPath.row];
        SFSafariViewController *safariVC = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:model.webURL]];
        safariVC.delegate = self;
        [self presentViewController:safariVC animated:YES completion:nil];
    }
    else
    {
        ADCHero *hero = [ADCHero new];
        [hero skillR];
    }
    
}

+ (BOOL)resolveClassMethod:(SEL)sel {
    return YES;
}



//- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
//    return <#expression#>
//}

- (void)forwardInvocation:(NSInvocation *)anInvocation {
    
}

#pragma mark - SFSafariViewControllerDelegate
- (void)safariViewControllerDidFinish:(SFSafariViewController *)controller {
    [controller dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
