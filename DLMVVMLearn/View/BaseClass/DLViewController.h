//
//  DLViewController.h
//  DLMVVMLearn
//
//  Created by dylan on 2017/6/28.
//  Copyright © 2017年 dylan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DLViewController : UIViewController

@property (nonatomic, strong, readonly) DLViewModel *viewModel;
@property (nonatomic, strong, readonly) UIPercentDrivenInteractiveTransition *interactivePopTransition;
@property (nonatomic, strong) UIView *snapshot;

- (instancetype)initWithViewModel:(DLViewModel *)viewModel;
- (void)bindViewModel;

@end
