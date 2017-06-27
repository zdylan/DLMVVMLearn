//
//  DLViewModel.m
//  DLMVVMLearn
//
//  Created by dylan on 2017/6/27.
//  Copyright © 2017年 dylan. All rights reserved.
//

#import "DLViewModel.h"


@interface DLViewModel ()

@property (nonatomic, strong, readwrite) id<DLViewModelServices> services;
@property (nonatomic, copy, readwrite) NSDictionary *params;

@property (nonatomic, strong, readwrite) RACSubject *errors;
@property (nonatomic, strong, readwrite) RACSubject *willDisappearSignal;

@end

@implementation DLViewModel

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    DLViewModel *viewModel = [super allocWithZone:zone];
    
//    @weakify(viewModel)
    [[viewModel
      rac_signalForSelector:@selector(initWithServices:params:)]
      subscribeNext:^(id x) {
//          @strongify(viewModel)
          [viewModel initialize];
     }];
    return viewModel;
}

- (instancetype)initWithServices:(id<DLViewModelServices>)services params:(NSDictionary *)params {
    self = [super init];
    if (self) {
        self.shouldFetchLocalDataOnViewModelInitialize = YES;
        self.shouldRequestRemoteDataOnViewDidLoad = YES;
        self.title = params[@"title"];
        self.services = services;
        self.params = params;
    }
    return self;
}

- (RACSubject *)errors {
    if (!_errors) _errors = [RACSubject subject];
    return _errors;
}

- (RACSubject *)willDisappearSignal {
    if (!_willDisappearSignal) _willDisappearSignal = [RACSubject subject];
    return _willDisappearSignal;
}

- (void)initialize {}

@end
