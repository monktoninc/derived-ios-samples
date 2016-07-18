//
//  AppDelegate.m
//  DerivedSample-ObjC
//
//  Created by Harold Smith  on 7/17/16.
//  Copyright © 2016 Monkton, Inc. All rights reserved.
//

#import "AppDelegate.h"
#import <DerivedKit/DerivedKit-Swift.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	[[DerivedController getInstance] setScheme:@"derivedemo"];
	return YES;
}

- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString *,id> *)options {
	return [[DerivedController getInstance] handleOpenUrl:url sourceApplication:nil];
}

@end
