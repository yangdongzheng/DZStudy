//
//  TransPushTool.m
//  DZStudy
//
//  Created by 杨东正 on 2017/7/10.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import "TransPushTool.h"

@implementation TransPushTool

//返回转场动画执行时间
- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    return 2;
}

//利用转场上下文写动画
- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    /**<#文档注释#>***
     1.transitionContext:转场上下文
     2.fromVc：来自哪个ViewController
     3.toVc:去哪个控制器
     **/
    //获取view(根据key获取view)
    UIView *fromView = [transitionContext viewForKey:UITransitionContextFromViewKey];
//我们push动画中用不到fromView
    UIView *toView = [transitionContext viewForKey:UITransitionContextToViewKey];
    
//动画的容器:所有设置的view都必须添加到这里面来
    UIView *containerView = [transitionContext containerView];
    
    //让要呈现的view透明度为0
    toView.alpha = 0;
    [containerView addSubview:toView];
    
//写动画(动画时间和上面的转场的时间必须一样)
    [UIView animateWithDuration:2.0 animations:^{
        toView.alpha = 1;
    } completion:^(BOOL finished) {
        //转场完成
        [transitionContext completeTransition:YES];
    }];
}
//至此在这个工具类中我们做的配置已写完了

@end
