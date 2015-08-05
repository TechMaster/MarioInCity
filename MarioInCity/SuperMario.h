//
//  SuperMario.h
//  SomeUIViewDemos
//
//  Created by Cuong Trinh on 7/23/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import "Sprite.h"

@interface SuperMario : Sprite
@property (nonatomic, assign) CGFloat y0; //initial y coordinate
@property (nonatomic, assign) BOOL alive;
- (void) getKilled;
@end
