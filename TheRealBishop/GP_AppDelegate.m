//
//  GP_AppDelegate.m
//  TheRealBishop
//
//  Created by zhou Yangbo on 12-8-7.
//  Copyright (c) 2012年 GODPAPER. All rights reserved.
//

#import "GP_AppDelegate.h"
#import "Game.h"
#import "RootViewController.h"

@implementation GP_AppDelegate

@synthesize window = _window;
@synthesize sparrowView;
@synthesize rootViewController = _rootViewController;
- (void)dealloc
{
    [sparrowView release];
    [window release];
    [_rootViewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    CGRect screenBounds = [UIScreen mainScreen].bounds;
    _window = [[UIWindow alloc] initWithFrame:screenBounds];
    
    _rootViewController = [[SPViewController alloc] init];
    
    // Enable some common settings here:
    //
    // _viewController.showStats = YES;
    // _viewController.multitouchEnabled = YES;
    // _viewController.preferredFramesPerSecond = 60;
    
    [_rootViewController startWithRoot:[Game class] supportHighResolutions:YES doubleOnPad:YES];
    
    [_window setRootViewController:_rootViewController];
    [_window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    
    [sparrowView stop];
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
    
    [sparrowView start];
}

//Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView  
{
}

@end
