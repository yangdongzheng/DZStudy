//
//  DZBaseViewModel.m
//  DZStudy
//
//  Created by 杨东正 on 2017/3/24.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import "DZBaseViewModel.h"

@implementation DZBaseViewModel

+ (DZBaseViewModel *)modelWithTitle:(NSString *)title {
    return [self modelWithTitle:title controllerName:nil methodName:nil webURL:nil];
}

+ (DZBaseViewModel *)modelWithTitle:(NSString *)title controllerName:(NSString *)controllerName {
    return [self modelWithTitle:title controllerName:controllerName methodName:nil webURL:nil];
}

+ (DZBaseViewModel *)modelWithTitle:(NSString *)title webURL:(NSString *)webURL {
    return [self modelWithTitle:title controllerName:nil methodName:nil webURL:webURL];
}

+ (DZBaseViewModel *)modelWithTitle:(NSString *)title
                     controllerName:(NSString *)controllerName
                         methodName:(NSString *)methodName
                             webURL:(NSString *)webURL {
    DZBaseViewModel *model = [DZBaseViewModel new];
    model.title = title;
    model.controllerName = controllerName;
    model.methodName = methodName;
    model.webURL = webURL;
    return model;
}

@end
