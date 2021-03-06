//
//  UIImage+THAdditions.h
//  Theses
//
//  Created by 吴 天 on 12-10-21.
//  Copyright (c) 2012年 NFSYSU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (THAdditions)

- (UIImage *)stretchableImageByWidthCenter;
- (UIImage *)stretchableImageByCenter;

+ (UIImage *)cachedImageNamed:(NSString *)name;
+ (UIImage *)imageNamed:(NSString *)name cache:(BOOL)cache;

@end
