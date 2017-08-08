//
//  DZPluginViewController.m
//  DZStudy
//
//  Created by 杨东正 on 2017/8/7.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import "DZPluginViewController.h"
#import "DZBaseViewModel.h"

@interface DZPluginViewController ()

@end

@implementation DZPluginViewController



- (instancetype)init {
    self = [super init];
    if (self) {
        NSMutableArray *dataArray = [NSMutableArray array];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"xcode插件" webURL:@"http://www.cocoachina.com/ios/20160122/15080.html"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"VVDocumenter-Xcode" webURL:@"https://github.com/onevcat/VVDocumenter-Xcode"]];
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
