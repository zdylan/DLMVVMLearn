//
//  DLTabBarController.m
//  DLMVVMLearn
//
//  Created by dylan.zhang on 2017/6/29.
//  Copyright © 2017年 dylan. All rights reserved.
//

#import "DLTabBarController.h"

@interface DLTabBarController ()

@property (nonatomic, strong, readwrite) UITabBarController *tabBarController;

@end

@implementation DLTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.tabBarController = [[UITabBarController alloc] init];

    [self addChildViewController:self.tabBarController];
    [self.view addSubview:self.tabBarController.view];
}

@end
