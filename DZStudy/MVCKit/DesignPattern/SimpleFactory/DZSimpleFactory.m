//
//  DZSimpleFactory.m
//  DZStudy
//
//  Created by 杨东正 on 2017/8/2.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import "DZSimpleFactory.h"
#import "DZSportCar.h"
#import "DZJeepCar.h"
#import "DZHatchbackCar.h"

@implementation DZSimpleFactory

- (DZCar *)getCarFactoryWithType:(NSInteger)type {
    switch (type) {
        case DZCarSport:
            return [DZSportCar new];
            break;
        case DZCarJeep:
            return [DZJeepCar new];
            break;
        case DZCarHatchback:
            return [DZHatchbackCar new];
            break;
        default:
            break;
    }
    return nil;
}

@end
