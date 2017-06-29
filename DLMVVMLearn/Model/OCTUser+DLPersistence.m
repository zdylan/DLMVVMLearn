//
//  OCTUser+DLPersistence.m
//  DLMVVMLearn
//
//  Created by dylan.zhang on 2017/6/30.
//  Copyright © 2017年 dylan. All rights reserved.
//

#import "OCTUser+DLPersistence.h"

@implementation OCTUser (DLPersistence)

#pragma mark - DLPersistenceProtocol

- (BOOL)dl_saveOrUpdate {
    return YES;
}

- (BOOL)dl_delete {
    return YES;
}

#pragma mark - Fetch User

+ (instancetype)dl_userWithRawLogin:(NSString *)rawLogin server:(OCTServer *)server {
    NSParameterAssert(rawLogin.length > 0);
    NSParameterAssert(server);

    return nil;
}

@end
