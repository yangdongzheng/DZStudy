//
//  DZJeepCar.m
//  DZStudy
//
//  Created by 杨东正 on 2017/8/2.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import "DZJeepCar.h"
#import "SimpleFactoryProtocol.h"

@interface DZJeepCar () <SimpleFactoryProtocol>

@end

@implementation DZJeepCar

/// <summary>
/// 具体产品类： 越野车
/// </summary>
- (void)getCar {
    NSLog(@"场务把越野车交给范·迪塞尔");
}

@end
