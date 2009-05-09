//
//  MenuScene.m
//  SimpleGame
//
//  http://monoclestudios.com/cocos2d_whitepaper.html
//  This is free software - see LICENSE for details
//

#import "GameScene.h"
#import "MenuScene.h"


@implementation GameScene
- (id) init {
    self = [super init];
    if (self != nil) {
        Sprite * bg = [Sprite spriteWithFile:@"game.png"];
        [bg setPosition:ccp(240, 160)];
        [self addChild:bg z:0];
        [self addChild:[GameLayer node] z:1];
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
- (BOOL)ccTouchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    MenuScene * ms = [MenuScene node];
    [[Director sharedDirector] replaceScene:ms];
    return kEventHandled;
}
@end
