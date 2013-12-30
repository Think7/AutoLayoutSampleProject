//
//  ALSPAppDelegate.m
//  AutoLayout Sample Project
//
//  Created by Andrew Ialacci on 12/30/13.
//  Copyright (c) 2013 Andrew Ialacci. All rights reserved.
//

#import "ALSPAppDelegate.h"
#import "ALSPViewController.h"
#import "ALSPScrollView.h"

@implementation ALSPAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // Firstly, thank you so much for taking the time to answer my qestions!
    // This framework is absolutely fantastic and is an dream to work
    // with compared to the VFL or full AL API. Really can't thank you
    // enough for releasing it.
    //
    // Not sure if you want to keep tweeting back and fourth but
    // my email is andrew@dkai.dk if that's easeir.
    
    // Just change the root view controller here and build to see
    // either example.
    
    // Scroll View implementation using a content view
    ALSPScrollView *scrollViewExampleMaybe = [[ALSPScrollView alloc]init];
    
    // Example of view 1/4th off the main view.
    ALSPViewController *mainView = [[ALSPViewController alloc]init];
    
    [self.window setRootViewController:scrollViewExampleMaybe];
    
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
