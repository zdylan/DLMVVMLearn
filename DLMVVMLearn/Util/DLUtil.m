//
//  DLUtil.m
//  DLMVVMLearn
//
//  Created by dylan.zhang on 2017/6/30.
//  Copyright © 2017年 dylan. All rights reserved.
//

#import "DLUtil.h"

@implementation DLUtil

@end

@implementation NSString (Util)

- (BOOL)isExist {
    return self && ![self isEqualToString:@""];
}

- (BOOL)isImage {
    if (!self.isExist) return NO;

    NSArray *imageExtensions = @[ @".png", @".gif", @".jpg", @".jpeg" ];
    for (NSString *extension in imageExtensions) {
        if ([self.lowercaseString hasSuffix:extension]) return YES;
    }

    return NO;
}

- (BOOL)isMarkdown {
    if (!self.isExist) return NO;

    NSArray *markdownExtensions = @[ @".md", @".mkdn", @".mdwn", @".mdown", @".markdown", @".mkd", @".mkdown", @".ron" ];
    for (NSString *extension in markdownExtensions) {
        if ([self.lowercaseString hasSuffix:extension]) return YES;
    }

    return NO;
}

- (NSString *)firstLetter {
    return [[self substringToIndex:1] uppercaseString];
}

@end
