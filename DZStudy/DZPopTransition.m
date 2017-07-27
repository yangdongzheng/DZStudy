//
//  DZPopTransition.m
//  DZStudy
//
//  Created by 杨东正 on 2017/7/10.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import "DZPopTransition.h"

@implementation DZPopTransition

//遵守那个协议后，我们有两个必须实现的方法，在这里面来写你自己想要的动画方式

//返回转场动画执行时间
- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    return 0.3;
}

//利用转场上下文写动画
- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    /**<#文档注释#>***
     1.transitionContext:转场上下文
     2.fromVc：来自哪个ViewController
     3.toVc:去哪个控制器
     **/
    //获取view
    UIView *toView = [transitionContext viewForKey:UITransitionContextToViewKey];
    UIView *fromView = [transitionContext viewForKey:UITransitionContextFromViewKey];
    
    //给toView的形变属性设值(缩小一点点)
    UIView *containerView = [transitionContext containerView];
    
    //将toView加到FromView之下
    [containerView insertSubview:toView belowSubview:fromView];
    
    //动画
    [UIView animateWithDuration:0.3 animations:^{
        //把来自的view放到屏幕下面去
        fromView.frame = CGRectMake(0, 800, CGRectGetWidth(toView.frame), CGRectGetHeight(toView.frame));
        
    } completion:^(BOOL finished) {
        
        [fromView removeFromSuperview];
        
        [transitionContext completeTransition:YES];
        
    }];
}

@end
