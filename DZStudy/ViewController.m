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
        self.dataSource = [DZUtils dataSourceWithFileName:@"HomeViewDataSource"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_button addTarget:self action:@selector(pushLoginView:) forControlEvents:UIControlEventTouchUpInside];
    
    int count;

    objc_property_t *propertyList = class_copyPropertyList([TestObject class], &count);
    for (unsigned int i=0; i<count; i++) {
        const char *propertyName = property_getName(propertyList[i]);
        NSLog(@"property---->%@", [NSString stringWithUTF8String:propertyName]);
    }
    
    
    Ivar *ivarList = class_copyIvarList([TestObject class], &count);
    for (unsigned int i=0; i<count; i++) {
        const char *ivarName = ivar_getName(ivarList[i]);
        NSLog(@"ivarName---->%@", [NSString stringWithUTF8String:ivarName]);
    }
    
    self.title = @"DZ";
}

@end
