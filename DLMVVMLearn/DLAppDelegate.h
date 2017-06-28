//
//  AppDelegate.h
//  DLMVVMLearn
//
//  Created by dylan on 2017/6/27.
//  Copyright © 2017年 dylan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DLNavigationControllerStack.h"

@interface DLAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic, strong, readonly) DLNavigationControllerStack *navigationControllerStack;

@end

