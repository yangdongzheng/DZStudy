//
//  DZRouter.m
//  DZStudy
//
//  Created by 杨东正 on 2017/8/2.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import "DZRouter.h"
#import "AppDelegate.h"
#import <objc/runtime.h>

@implementation DZRouter

// 跳转
+ (void)pushController:(NSString *)controllerName params:(NSDictionary *)params
{
    // 类名
    const char *className = [controllerName cStringUsingEncoding:NSASCIIStringEncoding];
    // 从一个字串返回一个类
    Class newClass = objc_getClass(className);
    if (!newClass)
    {
        // 创建一个类
        Class superClass = [NSObject class];
        newClass = objc_allocateClassPair(superClass, className, 0);
        // 注册你创建的这个类
        objc_registerClassPair(newClass);
    }
    // 创建对象
    id instance = [[newClass alloc] init];
    
    // 对该对象赋值属性
    [params enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        // 检测这个对象是否存在该属性
        if ([self checkIsExistPropertyWithInstance:instance verifyPropertyName:key]) {
            // 利用kvc赋值
            [instance setValue:obj forKey:key];
        }
    }];
    // 获取导航控制器
    AppDelegate *appdelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    
    UINavigationController *nav = (UINavigationController *)appdelegate.window.rootViewController;
    [nav pushViewController:instance animated:YES];
}

// 检测对象是否存在该属性
+ (BOOL)checkIsExistPropertyWithInstance:(id)instance verifyPropertyName:(NSString *)verifyPropertyName
{
    unsigned int outCount, i;
    // 获取对象里的属性列表
    objc_property_t * properties = class_copyPropertyList([instance
                                                           class], &outCount);
    for (i = 0; i < outCount; i++) {
        objc_property_t property =properties[i];
        //  属性名转成字符串
        NSString *propertyName = [[NSString alloc] initWithCString:property_getName(property) encoding:NSUTF8StringEncoding];
        // 判断该属性是否存在
        if ([propertyName isEqualToString:verifyPropertyName]) {
            free(properties);
            return YES;
        }
    }
    free(properties);
    return NO;
}

@end
