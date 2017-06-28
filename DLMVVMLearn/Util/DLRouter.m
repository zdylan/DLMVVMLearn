//
//  DLRouter.m
//  DLMVVMLearn
//
//  Created by dylan.zhang on 2017/6/28.
//  Copyright © 2017年 dylan. All rights reserved.
//

#import "DLRouter.h"

@interface DLRouter ()

@property (nonatomic, copy) NSDictionary *viewModelViewMappings;

@end

@implementation DLRouter

+ (instancetype)sharedInstance {
    static DLRouter *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (DLViewController *)viewControllerForViewModel:(DLViewModel *)viewModel {
    NSString *viewController = self.viewModelViewMappings[NSStringFromClass(viewModel.class)];

    NSParameterAssert([NSClassFromString(viewController) isSubclassOfClass:[DLViewController class]]);
    NSParameterAssert([NSClassFromString(viewController) instancesRespondToSelector:@selector(initWithViewModel:)]);

    return [[NSClassFromString(viewController) alloc] initWithViewModel:viewModel];
}

- (NSDictionary *)viewModelViewMappings {
    return @{
             @"DLLoginViewModel": @"DLLoginViewController"
             };
}

@end
