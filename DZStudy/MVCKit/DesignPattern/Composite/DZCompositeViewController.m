//
//  DZCompositeViewController.m
//  DZStudy
//
//  Created by 杨东正 on 2017/8/2.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import "DZCompositeViewController.h"
#import "HCDConcreteCompany.h"
#import "HCDHRDepartment.h"
#import "HCDFinanceDepartment.h"

@interface DZCompositeViewController ()

@end

@implementation DZCompositeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HCDConcreteCompany *root = [[HCDConcreteCompany alloc]initWithName:@"总公司"];
    [root add:[[HCDHRDepartment alloc]initWithName:@"总公司人力资源部"]];
    [root add:[[HCDFinanceDepartment alloc]initWithName:@"总公司财务部"]];
    
    HCDConcreteCompany *comp = [[HCDConcreteCompany alloc]initWithName:@"上海华东分公司"];
    [comp add:[[HCDHRDepartment alloc]initWithName:@"上海华东分公司人力资源部"]];
    [comp add:[[HCDFinanceDepartment alloc]initWithName:@"上海华东分公司财务部"]];
    [root add:comp];
    
    HCDConcreteCompany *comp1 = [[HCDConcreteCompany alloc]initWithName:@"杭州办事处"];
    [comp1 add:[[HCDHRDepartment alloc]initWithName:@"杭州办事处人力资源部"]];
    [comp1 add:[[HCDFinanceDepartment alloc]initWithName:@"杭州办事处财务部"]];
    [root add:comp1];
    NSLog(@"结构图:----------------------------");
    [root display];
    NSLog(@"职责:---------------------------");
    [root lineofDuty];
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
