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
    [[Director sharedDirector] setLandscape: YES];
    MenuScene * ms = [MenuScene node];
    [[Director sharedDirector] runScene:ms];
}

@end
