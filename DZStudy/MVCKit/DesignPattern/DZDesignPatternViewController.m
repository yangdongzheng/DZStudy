//
//  DZDesignPatternViewController.m
//  DZStudy
//
//  Created by 杨东正 on 2017/7/27.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import "DZDesignPatternViewController.h"
#import "DZBaseViewModel.h"

@interface DZDesignPatternViewController ()

@end

@implementation DZDesignPatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *dataArray = [NSMutableArray array];
    [dataArray addObject:[DZBaseViewModel modelWithTitle:@"Abstract Factory，抽象工厂" controllerName:@"DZSimpleFactoryViewController"]];
    [dataArray addObject:[DZBaseViewModel modelWithTitle:@"Factory Method，工厂方法" controllerName:@"DZFactoryMethodViewController"]];
    [dataArray addObject:[DZBaseViewModel modelWithTitle:@"Singleton，单例模式" controllerName:@"DZSingletonViewController"]];
    [dataArray addObject:[DZBaseViewModel modelWithTitle:@"Adapter,适配器模式" controllerName:@"DZAdapterViewController"]];
    [dataArray addObject:[DZBaseViewModel modelWithTitle:@"Composite，组合模式" controllerName:@"DZCompositeViewController"]];
    [dataArray addObject:[DZBaseViewModel modelWithTitle:@"Decrator，装饰模式" controllerName:@"DZRuntimeViewController"]];
    [dataArray addObject:[DZBaseViewModel modelWithTitle:@"Proxy，代理模式" controllerName:@"DZRuntimeViewController"]];
    [dataArray addObject:[DZBaseViewModel modelWithTitle:@"Iterator，迭代器模式" controllerName:@"DZRuntimeViewController"]];
    [dataArray addObject:[DZBaseViewModel modelWithTitle:@"Mediator，中介者模式" controllerName:@"DZRuntimeViewController"]];
    [dataArray addObject:[DZBaseViewModel modelWithTitle:@"Observer，观察者模式" controllerName:@"DZRuntimeViewController"]];
    [dataArray addObject:[DZBaseViewModel modelWithTitle:@"Strategy，策略模式" controllerName:@"DZRuntimeViewController"]];
    [dataArray addObject:[DZBaseViewModel modelWithTitle:@"Template Method，模板方法" controllerName:@"DZRuntimeViewController"]];
    self.dataSource = dataArray;
}

@end
