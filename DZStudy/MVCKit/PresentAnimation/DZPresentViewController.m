//
//  DZPresentViewController.m
//  DZStudy
//
//  Created by 杨东正 on 2017/8/2.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import "DZPresentViewController.h"
#import "DZLoginViewController.h"
#import "DZBaseViewModel.h"

@interface DZPresentViewController ()

@end

@implementation DZPresentViewController

- (instancetype)init {
    self =  [super init];
    if (self) {
        NSMutableArray *dataArray = [NSMutableArray array];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"点我" controllerName:@"DZRunloopViewController"]];
        self.dataSource = dataArray;
    }
    return self;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    DZLoginViewController *loginView = [DZLoginViewController new];
    [self.navigationController pushViewController:loginView animated:YES];
}

@end
