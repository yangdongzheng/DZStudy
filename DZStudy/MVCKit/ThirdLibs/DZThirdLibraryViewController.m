//
//  DZThirdLibraryViewController.m
//  DZStudy
//
//  Created by 杨东正 on 2017/8/3.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import "DZThirdLibraryViewController.h"
#import "DZBaseViewModel.h"

@interface DZThirdLibraryViewController ()

@end

@implementation DZThirdLibraryViewController

- (instancetype)init {
    self =  [super init];
    if (self) {
        NSMutableArray *dataArray = [NSMutableArray array];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"pod 'UMengAnalytics', '4.2.4'  # 友盟统计"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"pod 'tingyunApp', '2.5.9'  # 网络监听"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"pod 'SDWebImage', '3.7.3'  # 图片加载"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"pod 'SDWebImage/WebP'"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"pod 'EaseMobSDK', '2.3.2'  # 环信SDK"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"pod 'Getui', '1.6.2.0'"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"pod 'MagicalRecord', '2.3.2'"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"pod 'AliyunOSSiOS', '2.6.0' # 阿里云图片上传"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"pod 'MagicWindowSDK'"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"pod 'libqrencode', '~> 3.4.2'  # 生成二维码工具"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"pod 'SensorsAnalyticsSDK', '1.7.3'"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"pod 'MLeaksFinder', '0.2.1'  #内存检测"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"pod 'OFOpenShare'  # 分享"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"pod 'OFIMSDKFusion' #环信"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"pod 'OFMiniZip'  # OFMiniZip"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"pod 'OFExtension'  # Json解析"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"pod 'OFNetworking'  # 网络请求"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"pod 'OFAlertViewBlock'  # OFAlertViewBlock"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"pod 'OFAvoidCrash'  #预防崩溃"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"pod 'MBProgressHUD', '0.9.2'  # 进度显示"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"pod 'OFCarouselView'  #轮播图"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"pod 'OFKit'"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"pod 'OFPullToRefresh'  # OFPullToRefresh"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"pod 'OFMJNIndexView'  # MJNIndexView"]];
        [dataArray addObject:[DZBaseViewModel modelWithTitle:@"pod 'OFPopoverView'  # OFPopoverView"]];
        self.dataSource = dataArray;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
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
