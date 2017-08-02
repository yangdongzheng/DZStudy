//
//  DZBaseViewModel.m
//  DZStudy
//
//  Created by 杨东正 on 2017/3/24.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import "DZBaseViewModel.h"

@implementation DZBaseViewModel

+ (DZBaseViewModel *)modelWithTitle:(NSString *)title controllerName:(NSString *)controllerName {
    DZBaseViewModel *model = [DZBaseViewModel new];
    model.title = title;
    model.controllerName = controllerName;
    return model;
}

@end
