//
//  DZRuntimeViewController.m
//  DZStudy
//
//  Created by 杨东正 on 2017/3/23.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import "DZRuntimeViewController.h"
#import "DZBaseViewModel.h"
#import "DZLoginViewController.h"
#import "DZUtils.h"
#import "TestObject.h"
#import "User.h"
#import "Book.h"
#import "NSObject+JSONExtension.h"
#import "Person.h"
#import "DZRouter.h"
#import "NSObject+Category.h"

#import <objc/runtime.h>
#import <objc/objc.h>
//#import <objc/message.h>

@interface DZRuntimeViewController ()

@end

@implementation DZRuntimeViewController

- (instancetype)init {
    self = [super init];
    if (self) {
        NSArray *titleArray = @[@"交换方法", @"关联属性", @"给类添加方法", @"JSPatch", @"模型转换",
                                @"自动归档与解档", @"路由", @"插件开发", @"动态变量控制", @"将某些OC代码转为运行时代码"];
        NSArray *methodNames = @[
                                 @"changeMethod", @"associatedObject", @"addMethod", @"jspatch",              @"jsonModel",
                                 @"archive",              @"router",                  @"plugin",          @"variableControl", @"runtimeCode"];
        NSMutableArray *dataArray = [NSMutableArray array];
        [titleArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            DZBaseViewModel *model = [DZBaseViewModel new];
            model.title = obj;
            model.methodName = [methodNames objectAtIndex:idx];
            [dataArray addObject:model];
        }];
        self.dataSource = dataArray;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Runtime";
    
    int count = 0;
    objc_property_t *propertyList = class_copyPropertyList([TestObject class], &count);
    for (unsigned int i=0; i<count; i++) {
        const char *propertyName = property_getName(propertyList[i]);
        NSLog(@"property---->%@", [NSString stringWithUTF8String:propertyName]);
    }
    
    
    Ivar *ivarList = class_copyIvarList([TestObject class], &count);
    for (unsigned int i=0; i<count; i++) {
        const char *ivarName = ivar_getName(ivarList[i]);
        NSLog(@"ivarName---->%@", [NSString stringWithUTF8String:ivarName]);
    }
}

#pragma mark - Override 
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    DZBaseViewModel *model = [self.dataSource objectAtIndex:indexPath.row];
    SEL selector = NSSelectorFromString(model.methodName);
    [self performSelector:selector];
}

// 交换方法
- (void)changeMethod {
    // UIImage+Category.h
}

// 关联属性
- (void)associatedObject {
    // #import "NSObject+Category.h"
    self.name = @"我就是我";
    NSLog(@"%@", self.name);
}

// 给类添加方法
- (void)addMethod {
    Person *one = [[Person alloc]init];
    
    IMP imp = class_getMethodImplementation([self class], @selector(addFind));
    class_addMethod([Person class], @selector(findInSelf), imp, "v@:");
    [one performSelector:@selector(findInSelf)];
}

- (void)addFind {
    NSLog(@"调用一个新添加的方法");
}

// JSPatch
- (void)jspatch {
    
}

// 模型转换
- (void)jsonModel {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"model.json" ofType:nil];
    NSData *jsonData = [NSData dataWithContentsOfFile:path];
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:NULL];
    
    User *user = [User objectWithDict:json];
    Book *book = user.books[0];
    
    NSLog(@"%@",book.name);
}

// 自动归档与解档
- (void)archive {
    NSString *path = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"temp.plist"];
    
    //    Person *person = [[Person alloc] init];
    
    // 归档
    //    person.name = @"人人";
    //    [NSKeyedArchiver archiveRootObject:person toFile:path];
    
    // 解档
    Person *person = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    NSLog(@"%@",person.name);
    
    NSLog(@"%@",path);
}

// 路由
- (void)router {
    [DZRouter pushController:@"UIViewController" params:@{@"title" : @"万能跳转"}];
}

// 插件开发
- (void)plugin {
    
}

// 动态变量控制
- (void)variableControl {
    NSLog(@"title = %@", [self valueForKey:@"title"]);
    [self setValue:@"修改一下标题" forKey:@"title"];
    NSLog(@"title = %@", [self valueForKey:@"title"]);
}

// 将某些OC代码转为运行时代码
- (void)runtimeCode {
    
}

- (void)pushLoginView:(id)sender {
    DZLoginViewController *loginView = [DZLoginViewController new];
    [self.navigationController pushViewController:loginView animated:YES];
}

@end
