//
//  UIViewController+Custom.m
//  MStore
//
//  Created by Dai Ryan on 13-8-2.
//  Copyright (c) 2013年 RoseVision. All rights reserved.
//

#import "UIViewController+Custom.h"

@implementation UIViewController (Custom)
#pragma mark - Public Mehtods
- (void)setCustomNavigationBackItem {
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [backButton setImage:[UIImage imageNamed:@"common_navBar_backIcon"]
                forState:UIControlStateNormal];
    NSString *title = @"关闭";
    CGFloat width = [title sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14.f]}].width;
    [backButton setFrame:CGRectMake(0.f, 0.f, 50, 44.f)];
    [backButton setTitle:@"关闭" forState:UIControlStateNormal];
    [backButton setTintColor:[UIColor blueColor]];
    [backButton addTarget:self
                   action:@selector(didClickCommonBackButton:)
         forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
    [self.navigationItem setLeftBarButtonItem:backItem];
}

- (void)setCustomNavigationRightButton:(NSString *)title action:(SEL)action{
    UIBarButtonItem *rightBarButtonItem = [self createCustomNavigationBarButton:title action:action];
    self.navigationItem.rightBarButtonItem = rightBarButtonItem;
}

- (UIBarButtonItem *)createCustomNavigationBarButton:(NSString *)title action:(SEL)action {
    CGFloat width = [title sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14.f]}].width;
    UIButton *barButton = [UIButton buttonWithType:UIButtonTypeCustom];
    barButton.titleLabel.font = [UIFont systemFontOfSize:14.f];
    [barButton setFrame:CGRectMake(0.f, 0.f, width, 44.f)];
    [barButton setTitle:title forState:UIControlStateNormal];
    [barButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [barButton setTitleColor:[UIColor orangeColor] forState:UIControlStateHighlighted];
    [barButton setContentHorizontalAlignment:UIControlContentHorizontalAlignmentRight];
    [barButton addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithCustomView:barButton];
    return barButtonItem;
}

- (void)setCustomBackgroundColor {
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)setCustomTitleViewWithImageName:(NSString *)imageName {
    UIImageView *titleImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:imageName]];
    titleImageView.contentMode = UIViewContentModeCenter;
    self.navigationItem.titleView = titleImageView;
}

- (void)didClickCommonBackButton:(id)sender {
    [self privateBack];
}

#pragma mark - PrivateMethods
- (void)privateBack {
    if ([self respondsToSelector:@selector(back)]) {
        [self performSelector:@selector(back)];
    } else {
        if ([self presentingViewController] &&
            self.navigationController != nil &&
            1 == [[self.navigationController viewControllers] count]) {
            
            [self.presentingViewController dismissViewControllerAnimated: YES completion: nil];
        } else {
            [self.navigationController popViewControllerAnimated: YES];
        }
    }
}

@end
