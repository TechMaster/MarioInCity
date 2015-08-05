//
//  Scene.h
//  SomeUIViewDemos
//
//  Created by Cuong Trinh on 7/23/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Sprite.h"
@class Sprite;

@interface Scene : UIViewController
@property (nonatomic, strong) NSMutableDictionary *sprites;
@property (nonatomic, assign) CGSize size;

- (void) addSprite: (Sprite*) sprite;

- (void) removeSprite: (Sprite*) sprite;

- (void) removeSpriteByName: (NSString*) spriteName;

@end
