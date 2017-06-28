//
//  DLNavigationController.m
//  DLMVVMLearn
//
//  Created by dylan.zhang on 2017/6/29.
//  Copyright © 2017年 dylan. All rights reserved.
//

#import "DLNavigationController.h"

@interface DLNavigationController ()

@end

@implementation DLNavigationController

- (BOOL)shouldAutorotate {
    return self.topViewController.shouldAutorotate;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return self.topViewController.supportedInterfaceOrientations;
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return self.topViewController.preferredStatusBarStyle;
}

@end
