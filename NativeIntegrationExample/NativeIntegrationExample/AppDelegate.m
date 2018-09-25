//
//  AppDelegate.m
//  NativeIntegrationExample
//
//  Created by Christian Bartsch on 20.09.18.
//  Copyright © 2018 Christian Bartsch. All rights reserved.
//

#import "AppDelegate.h"

#import "VPlayIOS.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  
  [[VPlayIOS sharedInstance] start];
  
  return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application {
  [[VPlayIOS sharedInstance] quit];
}


@end
