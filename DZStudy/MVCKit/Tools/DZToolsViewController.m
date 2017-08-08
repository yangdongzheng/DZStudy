//
//  DZToolsViewController.m
//  DZStudy
//
//  Created by 杨东正 on 2017/8/7.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import "DZToolsViewController.h"
#import "DZBaseViewModel.h"

@interface DZToolsViewController ()

@end

@implementation DZToolsViewController

- (instancetype)init {
    self = [super init];
    if (self) {
        NSMutableArray *dataArray = [NSMutableArray array];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"青花瓷" webURL:@"http://www.baidu.com"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"Alfred（小红帽）" webURL:@"http://www.baidu.com"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"CheatSheet" webURL:@"http://www.baidu.com"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"DaisyDisk" webURL:@"http://www.baidu.com"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"Github" webURL:@"http://www.baidu.com"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"ShadowSocks" webURL:@"http://www.baidu.com"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"MacDown" webURL:@"http://www.baidu.com"]];
        self.dataSource = dataArray;
    }
    return self;
}

@end
