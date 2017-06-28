//
//  DLNavigationControllerStack.h
//  DLMVVMLearn
//
//  Created by dylan on 2017/6/28.
//  Copyright © 2017年 dylan. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DLViewModelServices;

@interface DLNavigationControllerStack : NSObject

- (instancetype)initWithServices:(id<DLViewModelServices>)services;

- (void)pushNavigationController:(UINavigationController *)navigationController;

- (UINavigationController *)popNavigationController;

- (UINavigationController *)topNavigationController;

@end
