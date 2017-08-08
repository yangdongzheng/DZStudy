//
//  ADCHero.m
//  DZStudy
//
//  Created by 杨东正 on 2017/8/8.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import "ADCHero.h"
#import "AsistantHero.h"
#import <objc/runtime.h>

@implementation ADCHero

- (void)skillQ {
    NSLog(@"ADC 发起了Q技能");
}

- (void)skillW {
    NSLog(@"ADC 发起了W技能");
}

- (void)skillE {
    NSLog(@"ADC 发起了E技能");
}

// --------------  第一次机会 -----------------------
//+ (BOOL)resolveInstanceMethod:(SEL)sel {
//    NSLog(@"%s", __func__);
//    NSString *selectorString = NSStringFromSelector(sel);
//    if ([selectorString isEqualToString:@"skillR"]) { // 如果方法名是skillR
//        class_addMethod(self, sel, (IMP)skillFlash, "@:"); // 动态添加方法skillFlash， 参数一: 消息接收者；参数二: 调用的方法名；参数三：方法对应的实现地址；参数四: 类型编码。
//        return YES; //
//    }
//    
//    return [super resolveInstanceMethod:sel];
//}
//
//void skillFlash() {
//    NSLog(@"闪现");
//}


// --------------  第二次机会 -----------------------
//- (id)forwardingTargetForSelector:(SEL)aSelector {
//    NSLog(@"%s", __func__);
//    NSString *selectorString = NSStringFromSelector(aSelector);
//    if ([selectorString isEqualToString:@"skillR"]) {
//        AsistantHero *rinv = [[AsistantHero alloc] init];
//        return rinv;
//    }
//    
//    // 如果队友不在身边
//    return [super forwardingTargetForSelector:aSelector];
//}


// --------------  第三次机会 -----------------------
// 完整的消息转发机制
- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    NSLog(@"%s", __func__);
    NSString *selectorString = NSStringFromSelector(aSelector);
    if ([selectorString isEqualToString:@"skillR"]) {
        NSMethodSignature *signature = [NSMethodSignature signatureWithObjCTypes:"v@:"];
        return signature;
    }
    return nil;
}

- (void)forwardInvocation:(NSInvocation *)anInvocation {
    NSLog(@"%s", __func__);
    AsistantHero *rinv = [[AsistantHero alloc] init];
    if ([rinv respondsToSelector:[anInvocation selector]]) {
        [anInvocation invokeWithTarget:rinv];
    } else {
        [super forwardInvocation:anInvocation];
    }
}

@end
