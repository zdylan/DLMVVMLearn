//
//  SAMKeychain+DLUtil.h
//  DLMVVMLearn
//
//  Created by dylan.zhang on 2017/6/29.
//  Copyright © 2017年 dylan. All rights reserved.
//

#import <SAMKeychain/SAMKeychain.h>

@interface SAMKeychain (DLUtil)

+ (NSString *)rawLogin;
+ (NSString *)password;
+ (NSString *)accessToken;

+ (BOOL)setRawLogin:(NSString *)rawLogin;
+ (BOOL)setPassword:(NSString *)password;
+ (BOOL)setAccessToken:(NSString *)accessToken;

+ (BOOL)deleteRawLogin;
+ (BOOL)deletePassword;
+ (BOOL)deleteAccessToken;

@end
