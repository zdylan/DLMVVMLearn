//
//  DLViewModelServices.h
//  DLMVVMLearn
//
//  Created by dylan on 2017/6/28.
//  Copyright © 2017年 dylan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DLNavigationProtocol.h"
#import "DLRepositoryService.h"
#import "DLAppStoreService.h"

@protocol DLViewModelServices <NSObject, DLNavigationProtocol>

@required

@property (nonatomic, strong) OCTClient *client;

@property (nonatomic, strong, readonly) id<DLRepositoryService> repositoryService;
@property (nonatomic, strong, readonly) id<DLAppStoreService> appStoreService;


@end
