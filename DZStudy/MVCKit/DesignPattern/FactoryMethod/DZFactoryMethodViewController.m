//
//  DZFactoryMethodViewController.m
//  DZStudy
//
//  Created by 杨东正 on 2017/8/2.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import "DZFactoryMethodViewController.h"
#import "HCDfactory.h"
#import "HCDfactoryAdd.h"


@interface DZFactoryMethodViewController ()

@end

@implementation DZFactoryMethodViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HCDfactoryAdd *factory = [[HCDfactoryAdd alloc]init];
    HCDfactory  *calculate = [factory createFactory];
    calculate.numberA = 10;
    calculate.numberB = 15;
    NSLog(@"结果是%f",[calculate calculate]);
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
