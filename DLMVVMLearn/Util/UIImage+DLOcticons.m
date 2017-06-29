//
//  UIImage+DLOcticons.m
//  DLMVVMLearn
//
//  Created by dylan.zhang on 2017/6/30.
//  Copyright © 2017年 dylan. All rights reserved.
//

#import "UIImage+DLOcticons.h"

@implementation UIImage (DLOcticons)

+ (UIImage *)octicon_imageWithIdentifier:(NSString *)identifier size:(CGSize)size {
    return [UIImage octicon_imageWithIcon:identifier
                          backgroundColor:[UIColor clearColor]
                                iconColor:[UIColor darkGrayColor]
                                iconScale:1
                                  andSize:size];
}

@end
