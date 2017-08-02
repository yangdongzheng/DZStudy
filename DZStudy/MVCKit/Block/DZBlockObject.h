//
//  DZBlockObject.h
//  DZStudy
//
//  Created by 杨东正 on 2017/8/2.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^LoginSuccess)(id result);
typedef void(^LoginFailed)(NSError *error);

@interface DZBlockObject : NSObject

@property (nonatomic, copy) LoginSuccess success;
@property (nonatomic, copy) LoginFailed failed;

@end
