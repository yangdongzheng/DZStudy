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

- (void)pushLoginView:(id)sender {
    DZLoginViewController *loginView = [DZLoginViewController new];
    [self.navigationController pushViewController:loginView animated:YES];
}

- (instancetype)initWithCoder:aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
//        self.dataSource = [DZUtils dataSourceWithFileName:@"HomeViewDataSource"];
        NSMutableArray *dataArray = [NSMutableArray array];
        {
            DZBaseViewModel *model = [DZBaseViewModel new];
            model.title = @"Runloop";
            model.controllerName = @"DZRunloopViewController";
            [dataArray addObject:model];
        }
        {
            DZBaseViewModel *model = [DZBaseViewModel new];
            model.title = @"Runtime";
            model.controllerName = @"DZRuntimeViewController";
            [dataArray addObject:model];
        }
        {
            DZBaseViewModel *model = [DZBaseViewModel new];
            model.title = @"排序";
            model.controllerName = @"DZSortViewController";
            [dataArray addObject:model];
        }
        {
            DZBaseViewModel *model = [DZBaseViewModel new];
            model.title = @"多线程";
            model.controllerName = @"DZMultithreadingViewController";
            [dataArray addObject:model];
        }
        {
            DZBaseViewModel *model = [DZBaseViewModel new];
            model.title = @"设计模式";
            model.controllerName = @"DZDesignPatternViewController";
            [dataArray addObject:model];
        }
        {
            DZBaseViewModel *model = [DZBaseViewModel new];
            model.title = @"Block";
            model.controllerName = @"OFBlockViewController";
            [dataArray addObject:model];
        }
        {
            DZBaseViewModel *model = [DZBaseViewModel new];
            model.title = @"开源库";
            model.controllerName = @"OFBlockViewController";
            [dataArray addObject:model];
        }
        {
            DZBaseViewModel *model = [DZBaseViewModel new];
            model.title = @"插件";
            model.controllerName = @"OFBlockViewController";
            [dataArray addObject:model];
        }
        {
            DZBaseViewModel *model = [DZBaseViewModel new];
            model.title = @"网络";
            model.controllerName = @"OFBlockViewController";
            [dataArray addObject:model];
        }
        {
            DZBaseViewModel *model = [DZBaseViewModel new];
            model.title = @"推送";
            model.controllerName = @"OFBlockViewController";
            [dataArray addObject:model];
        }
        {
            DZBaseViewModel *model = [DZBaseViewModel new];
            model.title = @"架构演进";
            model.controllerName = @"OFBlockViewController";
            [dataArray addObject:model];
        }
        {
            DZBaseViewModel *model = [DZBaseViewModel new];
            model.title = @"web交互";
            model.controllerName = @"OFBlockViewController";
            [dataArray addObject:model];
        }
        {
            DZBaseViewModel *model = [DZBaseViewModel new];
            model.title = @"使用的工具";
            model.controllerName = @"OFBlockViewController";
            [dataArray addObject:model];
        }
        self.dataSource = dataArray;
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_button addTarget:self action:@selector(pushLoginView:) forControlEvents:UIControlEventTouchUpInside];
    self.title = @"DZ";
}

@end
