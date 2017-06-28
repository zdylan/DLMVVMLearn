//
//  DLViewModelServicesImpl.m
//  DLMVVMLearn
//
//  Created by dylan on 2017/6/28.
//  Copyright © 2017年 dylan. All rights reserved.
//

#import "DLViewModelServicesImpl.h"
#import "DLRepositoryServiceImpl.h"
#import "DLAppStoreServiceImpl.h"
#import "DLViewModel.h"

@implementation DLViewModelServicesImpl

@synthesize client = _client;
@synthesize repositoryService = _repositoryService;
@synthesize appStoreService = _appStoreService;

- (instancetype)init {
    if (self = [super init]) {
        _repositoryService = [[DLRepositoryServiceImpl alloc] init];
        _appStoreService = [[DLAppStoreServiceImpl alloc] init];
    }
    return self;
}

- (void)pushViewModel:(DLViewModel *)viewModel animated:(BOOL)animated {}

- (void)popViewModelAnimated:(BOOL)animated {}

- (void)popToRootViewModelAnimated:(BOOL)animated {}

- (void)presentViewModel:(DLViewModel *)viewModel animated:(BOOL)animated completion:(VoidBlock)completion {}

- (void)dismissViewModelAnimated:(BOOL)animated completion:(VoidBlock)completion {}

- (void)resetRootViewModel:(DLViewModel *)viewModel {}

@end
