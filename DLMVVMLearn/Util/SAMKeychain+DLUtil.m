//
//  SAMKeychain+DLUtil.m
//  DLMVVMLearn
//
//  Created by dylan.zhang on 2017/6/29.
//  Copyright © 2017年 dylan. All rights reserved.
//

#import "SAMKeychain+DLUtil.h"

@implementation SAMKeychain (DLUtil)

+ (NSString *)rawLogin {
    return [[NSUserDefaults standardUserDefaults] objectForKey:DL_RAW_LOGIN];
}

+ (NSString *)password {
    return [self passwordForService:DL_SERVICE_NAME account:DL_PASSWORD];
}

+ (NSString *)accessToken {
    return [self passwordForService:DL_SERVICE_NAME account:DL_ACCESS_TOKEN];
}

+ (BOOL)setRawLogin:(NSString *)rawLogin {
    if (rawLogin == nil) NSLog(@"+setRawLogin: %@", rawLogin);

    [[NSUserDefaults standardUserDefaults] setObject:rawLogin forKey:DL_RAW_LOGIN];
    [[NSUserDefaults standardUserDefaults] synchronize];

    return YES;
}

+ (BOOL)setPassword:(NSString *)password {
    return [self setPassword:password forService:DL_SERVICE_NAME account:DL_PASSWORD];
}

+ (BOOL)setAccessToken:(NSString *)accessToken {
    return [self setPassword:accessToken forService:DL_SERVICE_NAME account:DL_ACCESS_TOKEN];
}

+ (BOOL)deleteRawLogin {
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:DL_RAW_LOGIN];
    [[NSUserDefaults standardUserDefaults] synchronize];

    return YES;
}

+ (BOOL)deletePassword {
    return [self deletePasswordForService:DL_SERVICE_NAME account:DL_PASSWORD];
}

+ (BOOL)deleteAccessToken {
    return [self deletePasswordForService:DL_SERVICE_NAME account:DL_ACCESS_TOKEN];
}

@end
