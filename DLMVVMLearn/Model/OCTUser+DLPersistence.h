//
//  OCTUser+DLPersistence.h
//  DLMVVMLearn
//
//  Created by dylan.zhang on 2017/6/30.
//  Copyright © 2017年 dylan. All rights reserved.
//

#import <OctoKit/OctoKit.h>
#import "DLPersistenceProtocol.h"

@interface OCTUser (DLPersistence) <DLPersistenceProtocol>

+ (instancetype)dl_userWithRawLogin:(NSString *)rawLogin server:(OCTServer *)server;

@end
