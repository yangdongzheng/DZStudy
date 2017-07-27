//
//  DZRuntimeViewController.m
//  DZStudy
//
//  Created by 杨东正 on 2017/3/23.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import "DZRuntimeViewController.h"
#import "DZBaseViewModel.h"
#import "DZLoginViewController.h"
#import "DZUtils.h"
#import "TestObject.h"

#import <objc/runtime.h>

@interface DZRuntimeViewController ()

@end

@implementation DZRuntimeViewController

- (instancetype)init {
    self = [super init];
    if (self) {
        NSArray *titleArray = @[@"交换方法", @"关联属性", @"给类添加方法",
                                @"JSPatch", @"模型转换", @"自动归档与解档",
                                @"路由", @"插件开发", @"动态变量控制",
                                @"将某些OC代码转为运行时代码"];
        NSMutableArray *dataArray = [NSMutableArray array];
        [titleArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            DZBaseViewModel *model = [DZBaseViewModel new];
            model.title = obj;
            [dataArray addObject:model];
        }];
        self.dataSource = dataArray;
    }
    return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        NSLog(@"initWithNibName");
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        NSLog(@"initWithCoder");
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    NSLog(@"awakeFromNib");
}

- (void)loadView {
    [super loadView];
    
    NSLog(@"loadView");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Runtime";
    
    int count = 0;
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
}

- (void)pushLoginView:(id)sender {
    DZLoginViewController *loginView = [DZLoginViewController new];
    [self.navigationController pushViewController:loginView animated:YES];
}

@end
