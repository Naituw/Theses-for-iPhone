//
//  UIImage+THAdditions.m
//  Theses
//
//  Created by 吴 天 on 12-10-21.
//  Copyright (c) 2012年 NFSYSU. All rights reserved.
//

#import "UIImage+THAdditions.h"

static NSDictionary * cachedImages = nil;

@implementation UIImage (THAdditions)

- (UIImage *)stretchableImageByWidthCenter
{
    CGSize s = self.size;
    return [self stretchableImageWithLeftCapWidth:s.width/2 topCapHeight:0];
}

- (UIImage *)stretchableImageByCenter
{
    CGSize s = self.size;
    return [self stretchableImageWithLeftCapWidth:s.width/2 topCapHeight:s.height/2];
}

+ (UIImage *)cachedImageNamed:(NSString *)name
{
    return [self imageNamed:name cache:YES];
}
+ (UIImage *)imageNamed:(NSString *)name cache:(BOOL)cache
{
    if (!cachedImages)
    {
        cachedImages = [[NSMutableDictionary dictionary] retain];
    }
    UIImage * cachedImage = [cachedImages objectForKey:name];
    if (!cachedImage)
    {
        cachedImage = [UIImage imageNamed:name];
        if (cache && cachedImage)
        {
            [cachedImages setValue:cachedImage forKey:name];
        }
    }
    return cachedImage;
}

@end
