//
//  ThesesAppDelegate.m
//  Theses
//
//  Created by 吴 天 on 12-10-21.
//  Copyright (c) 2012年 NFSYSU. All rights reserved.
//

#import "ThesesAppDelegate.h"
#import "THViewDeckController.h"
#import "THNavigationController.h"
#import "THHomeViewController.h"
#import "THConversationsViewController.h"

@interface ThesesAppDelegate ()
@end

@implementation ThesesAppDelegate

- (void)dealloc
{
    [_window release], _window = nil;
    [super dealloc];
}

- (void)setupUserInterface
{
    THHomeViewController * homeViewController = [[THHomeViewController alloc] init];
    THConversationsViewController * conversationsViewController = [[THConversationsViewController alloc] init];
    
    homeViewController.title = NSLocalizedString(@"主页", "");
    conversationsViewController.title = NSLocalizedString(@"消息", "");
    
    THNavigationController * navigationWrapper = [[THNavigationController alloc] initWithRootViewController:homeViewController];
    
    THViewDeckController * viewDeckController = [[THViewDeckController alloc] initWithCenterViewController:navigationWrapper rightViewController:conversationsViewController];
    
    self.window.rootViewController = viewDeckController;
    
    [navigationWrapper release];
    [homeViewController release];
    [conversationsViewController release];
}

- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
{
    return YES;
}
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
        
    [self setupUserInterface];
    
    [self.window setBackgroundColor:[UIColor whiteColor]];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
