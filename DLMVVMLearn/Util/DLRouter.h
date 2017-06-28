//
//  DLRouter.h
//  DLMVVMLearn
//
//  Created by dylan.zhang on 2017/6/28.
//  Copyright © 2017年 dylan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DLViewController.h"

@interface DLRouter : NSObject

+ (instancetype)sharedInstance;
- (DLViewController *)viewControllerForViewModel:(DLViewModel *)viewModel;

@end
