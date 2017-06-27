//
//  DLViewModel.h
//  DLMVVMLearn
//
//  Created by dylan on 2017/6/27.
//  Copyright © 2017年 dylan. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DLViewModelServices;

typedef NS_ENUM(NSUInteger, DLTitleViewType) {
    DLTitleViewTypeDefault,
    DLTitleViewTypeDoubleTitle,
    DLTitleViewTypeLoadingTitle
};

@interface DLViewModel : NSObject

- (instancetype)initWithServices:(id<DLViewModelServices>)services params:(NSDictionary *)params;

@property (nonatomic, strong, readonly) id<DLViewModelServices> services;
@property (nonatomic, copy, readonly) NSDictionary *params;
@property (nonatomic, assign) DLTitleViewType titleViewType;

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;

//@property (nonatomic, copy) VoidBlock_id callback;

@property (nonatomic, strong, readonly) RACSubject *errors;

@property (nonatomic, assign) BOOL shouldFetchLocalDataOnViewModelInitialize;
@property (nonatomic, assign) BOOL shouldRequestRemoteDataOnViewDidLoad;

@property (nonatomic, strong, readonly) RACSubject *willDisappearSignal;

- (void)initialize;

@end
