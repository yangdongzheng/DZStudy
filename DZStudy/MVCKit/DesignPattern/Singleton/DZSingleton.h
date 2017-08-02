//
//  DZSingleton.h
//  DZStudy
//
//  Created by 杨东正 on 2017/8/2.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DZSingleton : NSObject

+ (instancetype)sharedInstance;

- (void)showMe;

@end
