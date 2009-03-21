//
//  MenuScene.h
//  SimpleGame
//
//  http://monoclestudios.com/cocos2d_whitepaper.html
//  This is free software - see LICENSE for details
//

#import <UIKit/UIKit.h>
#import "cocos2d.h"

@interface MenuScene : Scene {}
@end

@interface MenuLayer : Layer {}
-(void)startGame: (id)sender;
-(void)help: (id)sender;
@end