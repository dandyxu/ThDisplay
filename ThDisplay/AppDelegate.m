//
//  AppDelegate.m
//  ThDisplay
//
//  Created by DandyXu on 14-3-25.
//  Copyright (c) 2014年 DandyXu. All rights reserved.
//

#import "AppDelegate.h"
#import "UserGuideViewController.h"
#import "ViewController.h"
#import "LoginViewController.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    //设置启动画面，并延时2s
    //[[UIApplication sharedApplication] setStatusBarHidden:NO];
    //[NSThread sleepForTimeInterval:2.0];

    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    
    //判断是不是第一次启动应用
    if(![[NSUserDefaults standardUserDefaults] boolForKey:@"firstLaunch"])
    {
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"firstLaunch"];
         NSLog(@"第一次启动");
        
        //如果是第一次启动的话,使用UserGuideViewController (用户引导页面) 作为根视图
        UserGuideViewController *userGuideViewController = [[UserGuideViewController alloc] init];
        //ViewController *userGuideViewController = [[ViewController alloc]init];
        self.window.rootViewController = userGuideViewController;
        [userGuideViewController release];
    }
    else{
        NSLog(@"不是第一次启动");
        //如果不是第一次启动的话,使用LoginViewController作为根视图
        LoginViewController *ViewController = [[LoginViewController alloc] init];
        self.window.rootViewController = ViewController;
        [LoginViewController release];
    }
    
    self.window.backgroundColor = [UIColor whiteColor];
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
