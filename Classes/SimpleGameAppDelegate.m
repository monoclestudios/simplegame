//
//  SimpleGameAppDelegate.m
//  SimpleGame
//
//  Created by Will Larson on 11/8/08.
//  Copyright __MyCompanyName__ 2008. All rights reserved.
//

#import "SimpleGameAppDelegate.h"

@implementation SimpleGameAppDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    UIWindow *window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	[window setUserInteractionEnabled:YES];
	[window setMultipleTouchEnabled:YES];
    [[Director sharedDirector] setLandscape: YES];
	[[Director sharedDirector] attachInWindow:window];
	
	[window makeKeyAndVisible];
    
    MenuScene * ms = [MenuScene node];
	
	[[Director sharedDirector] runWithScene:ms];
}

@end
