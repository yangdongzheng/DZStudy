//
//  AppDelegate.h
//  DZStudy
//
//  Created by 杨东正 on 2017/3/21.
//  Copyright © 2017年 Dong Zheng Tech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

