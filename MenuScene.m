//
//  MenuScene.m
//  SimpleGame
//
//  Created by Will Larson on 11/8/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "MenuScene.h"
#import "GameScene.h"


@implementation MenuScene
- (id) init {
    self = [super init];
    if (self != nil) {
        Sprite * bg = [Sprite spriteWithFile:@"menu.png"];
        [bg setPosition:cpv(240, 160)];
        [self add:bg z:0];
        [self add:[MenuLayer node] z:1];
    }
    return self;
}
@end

@implementation MenuLayer
- (id) init {
    self = [super init];
    if (self != nil) {
        [MenuItemFont setFontSize:20];
        [MenuItemFont setFontName:@"Helvetica"];
        MenuItem *start = [MenuItemFont itemFromString:@"Start Game" target:self selector:@selector(startGame:)];
        MenuItem *help = [MenuItemFont itemFromString:@"Help" target:self selector:@selector(help:)];
		Menu *menu = [Menu menuWithItems:start, help, nil];
		[menu alignItemsVertically];
        [self add:menu];
    }
    return self;
}
-(void)startGame: (id)sender {
    GameScene * gs = [GameScene node];
    [[Director sharedDirector] replaceScene:gs];
}
-(void)help: (id)sender {
    NSLog(@"help");
}
@end
