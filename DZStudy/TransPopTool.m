//
//  TransPopTool.m
//  DZStudy
//
//  Created by 杨东正 on 2017/7/10.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import "TransPopTool.h"

@implementation TransPopTool

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    return 2;
}


- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    //获取view
    UIView *toView = [transitionContext viewForKey:UITransitionContextToViewKey];
    UIView *fromView = [transitionContext viewForKey:UITransitionContextFromViewKey];
    
    //给toView的形变属性设值(缩小一点点)
    toView.transform = CGAffineTransformMakeScale(0.9, 0.9);
    UIView *containerView = [transitionContext containerView];
    
    //将toView加到FromView之下
    [containerView insertSubview:toView belowSubview:fromView];
    
    //动画
    [UIView animateWithDuration:2 animations:^{
        //把来自的view放到屏幕下面去
        fromView.center = CGPointMake(fromView.center.x, [UIScreen mainScreen].bounds.size.height * 2);
        //将这个恢复其形变属性
        toView.transform = CGAffineTransformIdentity;
        
    } completion:^(BOOL finished) {
        
        [fromView removeFromSuperview];
        
        [transitionContext completeTransition:YES];
        
    }];
}

@end
