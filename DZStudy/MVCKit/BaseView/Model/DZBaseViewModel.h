//
//  DZBaseViewModel.h
//  DZStudy
//
//  Created by 杨东正 on 2017/3/24.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DZBaseViewModel : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *controllerName;
@property (nonatomic, strong) NSString *methodName;
@property (nonatomic, strong) NSString *webURL;

+ (DZBaseViewModel *)modelWithTitle:(NSString *)title controllerName:(NSString *)controllerName;

@end
