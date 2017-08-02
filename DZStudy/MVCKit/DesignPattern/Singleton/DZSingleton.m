//
//  DZSingleton.m
//  DZStudy
//
//  Created by 杨东正 on 2017/8/2.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import "DZSingleton.h"

@implementation DZSingleton

+ (instancetype)sharedInstance {
    static DZSingleton *singleton = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        singleton = [DZSingleton new];
    });
    return singleton;
}

- (void)showMe {
    NSLog(@"我是单利");
}

@end
