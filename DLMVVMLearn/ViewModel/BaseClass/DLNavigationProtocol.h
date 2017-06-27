//
//  DLNavigationProtocol.h
//  DLMVVMLearn
//
//  Created by dylan on 2017/6/27.
//  Copyright © 2017年 dylan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DLViewModel.h"

@protocol DLNavigationProtocol <NSObject>

- (void)pushViewModel:(DLViewModel *)viewModel animated:(BOOL)animated;

- (void)popViewModelAnimated:(BOOL)animated;

- (void)popToRootViewModelAnimated:(BOOL)animated;

- (void)presentViewModel:(DLViewModel *)viewModel animated:(BOOL)animated completion:(VoidBlock)completion;

- (void)dismissViewModelAnimated:(BOOL)animated completion:(VoidBlock)completion;

- (void)resetRootViewModel:(DLViewModel *)viewModel;

@end
