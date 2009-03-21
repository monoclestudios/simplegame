//
//  SimpleGameAppDelegate.m
//  SimpleGame
//
//  http://monoclestudios.com/cocos2d_whitepaper.html
//  This is free software - see LICENSE for details
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
