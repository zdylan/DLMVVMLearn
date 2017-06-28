//
//  DLLoginViewModel.h
//  DLMVVMLearn
//
//  Created by dylan on 2017/6/28.
//  Copyright © 2017年 dylan. All rights reserved.
//

#import "DLViewModel.h"

@interface DLLoginViewModel : DLViewModel

@property (nonatomic, copy, readonly) NSURL *avatarURL;
@property (nonatomic, copy) NSString *username;
@property (nonatomic, copy) NSString *password;

@property (nonatomic, strong, readonly) RACSignal *validLoginSignal;
@property (nonatomic, strong, readonly) RACCommand *loginCommand;

@property (nonatomic, strong, readonly) RACCommand *browserLoginCommand;
@property (nonatomic, strong, readonly) RACCommand *exchangeTokenCommand;

@end
