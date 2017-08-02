//
//  DZAdapterViewController.m
//  DZStudy
//
//  Created by 杨东正 on 2017/8/2.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import "DZAdapterViewController.h"
#import "HCDPlayer.h"
#import "HCDPlayer.h"
#import "HCDForwards.h"
#import "HCDTranslator.h"

@interface DZAdapterViewController ()

@end

@implementation DZAdapterViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    HCDPlayer *forward = [[HCDForwards alloc]initWithName:@"maidi"];
    [forward attack];
    [forward defense];
    HCDPlayer *foreignCenter = [[HCDTranslator alloc]initWithName:@"姚明"];
    [foreignCenter attack];
    [foreignCenter defense];
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
