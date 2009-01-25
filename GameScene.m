//
//  MenuScene.m
//  SimpleGame
//
//  Created by Will Larson on 11/8/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "GameScene.h"
#import "MenuScene.h"


@implementation GameScene
- (id) init {
    self = [super init];
    if (self != nil) {
        Sprite * bg = [Sprite spriteWithFile:@"game.png"];
        [bg setPosition:cpv(240, 160)];
        [self add:bg z:0];
        [self add:[GameLayer node] z:1];
    }
    return self;
}
@end

@implementation GameLayer
- (id) init {
    self = [super init];
    if (self != nil) {
        isTouchEnabled = YES;
    }
    return self;
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    MenuScene * ms = [MenuScene node];
    [[Director sharedDirector] runScene:ms];
}
@end
