//
//  AppDelegate.m
//  SDWebImageDemo
//
//  Created by myz on 2020/9/9.
//  Copyright © 2020 myz. All rights reserved.
//

#import "AppDelegate.h"
#import "SDNavigationController.h"
#import "SDImageCacheViewController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]initWithFrame:UIScreen.mainScreen.bounds];
    SDImageCacheViewController *imageCacheVC = [[SDImageCacheViewController alloc]init];
    SDNavigationController *navController = [[SDNavigationController alloc]initWithRootViewController:imageCacheVC];
    self.window.rootViewController = navController;
    self.window.backgroundColor = [UIColor redColor];
    [self.window makeKeyAndVisible];
    return YES;
}


@end
