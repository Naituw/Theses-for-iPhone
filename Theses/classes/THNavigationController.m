//
//  THNavigationController.m
//  Theses
//
//  Created by 吴 天 on 12-10-21.
//  Copyright (c) 2012年 NFSYSU. All rights reserved.
//

#import "THNavigationController.h"
#import <QuartzCore/QuartzCore.h>

@interface THNavigationController ()

@end

@implementation THNavigationController

- (id)initWithRootViewController:(UIViewController *)rootViewController
{
    self = [super initWithRootViewController:rootViewController];
    if (self) {
        UIImage * titleBarBG = [[UIImage cachedImageNamed:@"bg_title_bar.png"] stretchableImageByWidthCenter];
        [self.navigationBar setBackgroundImage:titleBarBG forBarMetrics:UIBarMetricsDefault];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}


@end
