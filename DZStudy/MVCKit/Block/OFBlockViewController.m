//
//  OFBlockViewController.m
//  DZStudy
//
//  Created by 杨东正 on 2017/7/27.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import "OFBlockViewController.h"
#import "DZBlockObject.h"

@interface OFBlockViewController ()

@end

@implementation OFBlockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    void (^success)(id result) = ^(id result){
        NSLog(@"%@", result);
    };
    DZBlockObject *blockObject = [DZBlockObject new];
    blockObject.success = success;
    blockObject.success(@"aaaa");
    
    // Do any additional setup after loading the view.
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
