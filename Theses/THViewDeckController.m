//
//  THViewDeckController.m
//  Theses
//
//  Created by 吴 天 on 12-10-21.
//  Copyright (c) 2012年 NFSYSU. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "THViewDeckController.h"

@interface THViewDeckController ()

@end

@implementation THViewDeckController

- (id)initWithCenterViewController:(UIViewController *)centerController rightViewController:(UIViewController *)rightController
{
    if (self = [super initWithCenterViewController:centerController rightViewController:rightController])
    {
        centerController.view.layer.cornerRadius = 3.0;
        centerController.view.layer.masksToBounds = YES;
    }
    return self;
}

@end
