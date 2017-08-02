//
//  ViewController.m
//  DZStudy
//
//  Created by 杨东正 on 2017/3/21.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import "ViewController.h"

#import "DZRuntimeViewController.h"
#import "DZMultithreadingViewController.h"
#import "DZRuntimeViewController.h"
#import "DZLoginViewController.h"

#import "DZBaseViewModel.h"

#import "DZUtils.h"
#import "TestObject.h"

#import <objc/runtime.h>

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UIButton *button;

@end

@implementation ViewController

- (instancetype)initWithCoder:aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        NSMutableArray *dataArray = [NSMutableArray array];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"Runloop" controllerName:@"DZRunloopViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"Runtime" controllerName:@"DZRuntimeViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"排序" controllerName:@"DZSortViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"多线程" controllerName:@"DZMultithreadingViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"设计模式" controllerName:@"DZDesignPatternViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"Block" controllerName:@"OFBlockViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"开源库" controllerName:@"OFBlockViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"插件" controllerName:@"OFBlockViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"网络" controllerName:@"OFBlockViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"推送" controllerName:@"DZRunloopViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"架构演进" controllerName:@"DZRunloopViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"web交互" controllerName:@"DZRunloopViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"使用的工具" controllerName:@"DZRunloopViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"KVO" controllerName:@"DZKVOViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"KVC" controllerName:@"DZKVCViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"Push修改为Present" controllerName:@"DZPresentViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"Swift" controllerName:@"OFBlockViewController"]];
        self.dataSource = dataArray;
    }
    return self;
}

@end
