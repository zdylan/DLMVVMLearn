//
//  DLUtil.h
//  DLMVVMLearn
//
//  Created by dylan.zhang on 2017/6/30.
//  Copyright © 2017年 dylan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DLUtil : NSObject

@end

@interface NSString (Util)

- (BOOL)isExist;
- (BOOL)isImage;
- (BOOL)isMarkdown;

- (NSString *)firstLetter;

@end

//@interface UIColor (Util)
//
//- (UIImage *)color2Image;
//- (UIImage *)color2ImageSized:(CGSize)size;
//
//@end
//
//@interface NSMutableArray (DLSafeAdditions)
//
//- (void)dl_addObject:(id)object;
//
//@end
