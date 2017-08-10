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
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"消息转发" controllerName:@"DZMessageForwardViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"排序" controllerName:@"DZSortViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"多线程" controllerName:@"DZMultithreadingViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"协议(Protocol)与委托(Delegate)" controllerName:@"DZMultithreadingViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"自动释放池" controllerName:@"DZMultithreadingViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"Instruments" controllerName:@"DZMultithreadingViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"设计模式" controllerName:@"DZDesignPatternViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"响应链" controllerName:@"DZDesignPatternViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"Block" controllerName:@"OFBlockViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"三方开源库" controllerName:@"DZThirdLibraryViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"插件" controllerName:@"DZPluginViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"网络" controllerName:@"OFBlockViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"推送" controllerName:@"DZRunloopViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"架构演进" controllerName:@"DZRunloopViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"web交互" controllerName:@"DZWebViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"使用的工具" controllerName:@"DZRunloopViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"KVO" controllerName:@"DZKVOViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"KVC" controllerName:@"DZKVCViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"Push修改为Present" controllerName:@"DZPresentViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"Swift" controllerName:@"OFBlockViewController"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"Mac工具" controllerName:@"DZToolsViewController"]];
        self.dataSource = dataArray;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"ios基础知识";
}

@end
