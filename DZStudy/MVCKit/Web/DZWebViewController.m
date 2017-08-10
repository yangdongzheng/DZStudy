//
//  DZWebViewController.m
//  DZStudy
//
//  Created by 杨东正 on 2017/8/9.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import "DZWebViewController.h"
#import <WebKit/WebKit.h>

@interface DZWebViewController ()

@property (nonatomic, strong) WKWebView *webView;

@end

@implementation DZWebViewController

-(instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)loadView {
    [super loadView];
    
    [self buildWebView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *path = [[NSBundle mainBundle] bundlePath];
    NSURL *baseURL = [NSURL fileURLWithPath:path];
    NSString * htmlPath = [[NSBundle mainBundle] pathForResource:@"test" ofType:@"html"];
    NSString * htmlCont = [NSString stringWithContentsOfFile:htmlPath encoding:NSUTF8StringEncoding error:nil];
    [self.webView loadHTMLString:htmlCont baseURL:baseURL];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    self.webView.frame = self.view.bounds;
}

#pragma mark - Builder
- (void)buildWebView {
    self.webView = [[WKWebView alloc] initWithFrame:CGRectZero];
    self.webView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.webView];
}

@end
