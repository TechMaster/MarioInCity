//
//  Scene.m
//  SomeUIViewDemos
//
//  Created by Cuong Trinh on 7/23/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import "Scene.h"

@implementation Scene

- (void) loadView {
    [super loadView];
    self.sprites = [NSMutableDictionary new];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void) addSprite: (Sprite*) sprite {
    [self.sprites setObject: sprite
                     forKey: sprite.name];
    [self.view addSubview: sprite.view];
}
- (void) removeSprite: (Sprite*) sprite {
   // NSArray* allKeysOfSprite = [self.sprites allKeysForObject:sprite];
   // [self.sprites removeObjectsForKeys:allKeysOfSprite];
    [self.sprites removeObjectForKey:sprite.name];
    [sprite.view removeFromSuperview];
}
- (void) removeSpriteByName: (NSString*) spriteName {
    UIView *removeView = self.sprites[spriteName];
    [removeView removeFromSuperview];
    [self.sprites removeObjectForKey:spriteName];    
}


@end
