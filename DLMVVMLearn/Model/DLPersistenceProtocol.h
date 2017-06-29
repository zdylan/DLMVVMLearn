//
//  DLPersistenceProtocol.h
//  DLMVVMLearn
//
//  Created by dylan.zhang on 2017/6/30.
//  Copyright © 2017年 dylan. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DLPersistenceProtocol <NSObject>

@required

- (BOOL)dl_saveOrUpdate;
- (BOOL)dl_delete;

@end
