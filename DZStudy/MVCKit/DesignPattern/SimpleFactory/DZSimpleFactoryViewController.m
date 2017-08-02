//
//  DZSimpleFactoryViewController.m
//  DZStudy
//
//  Created by 杨东正 on 2017/8/2.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import "DZSimpleFactoryViewController.h"
#import "DZSimpleFactory.h"

@interface DZSimpleFactoryViewController ()

@end

@implementation DZSimpleFactoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    DZSimpleFactory *factory = [DZSimpleFactory new];
    DZCar *car = [factory getCarFactoryWithType:DZCarJeep];
    [car getCar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
