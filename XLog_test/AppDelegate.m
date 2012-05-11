//
//  AppDelegate.m
//  XLog_test
//
//  Created by WenDong Zhang on 5/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "XLogUtil.h"

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    XLog_d(@"%s", __FUNCTION__);
    XLog_v(@"start!");
    // add a test button
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setTitle:@"click me" forState:UIControlStateNormal];
    [btn sizeToFit];
    btn.center = CGPointMake(160.0f, 200.0f);
    [self.window addSubview:btn];
    [btn addTarget:self action:@selector(onButtonClick) forControlEvents:UIControlEventTouchUpInside];

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

- (void)onButtonClick
{
    NSLog(@"haha");
    NSLog(@"\033#336699customized color #336699 \033#ff00ff :) \033#00000m reset");
    XLog_d(@"customize color" XLOG_ESC_CH @"#996633 #996633 " XLOG_COLOR_RESET @" after reset");
    XLog_d(@"click - debug %@", [NSDate date]);
    XLog_i(@"click - info %@", [NSDate date]);
    XLog_v(@"click - warn %@", [NSDate date]);
    XLog_e(@"click - error %@", [NSDate date]);
}

@end
