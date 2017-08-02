//
//  DZHatchbackCar.m
//  DZStudy
//
//  Created by 杨东正 on 2017/8/2.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import "DZHatchbackCar.h"
#import "SimpleFactoryProtocol.h"

@interface DZHatchbackCar () <SimpleFactoryProtocol>

@end

@implementation DZHatchbackCar

/// <summary>
/// 具体产品类： 两箱车
/// </summary>

- (void)getCar {
    NSLog(@"场务把两箱车交给范·迪塞尔");
}

@end
