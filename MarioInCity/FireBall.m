//
//  FireBall.m
//  SomeUIViewDemos
//
//  Created by Cuong Trinh on 7/24/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import "FireBall.h"

@implementation FireBall

/*-(instancetype) initInScene:(Scene *)scene {
    
    self = [super initWithView:[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"fireball.png"]]
                       inScene:scene];
    return self;
}*/

- (instancetype) initWithName:(NSString *)name
                      inScene:(Scene *)scene {
    self = [super initWithName: name
                       ownView: [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"fireball.png"]]
                       inScene: scene];
    return self;
}
- (void) startFly: (CGFloat)speed {
    if (!self.isFlying) {
        self.isFlying = true;
        self.speed = speed;
    }
}

- (void) animate {
    [self fly];
}

- (void) fly {
    if (!self.isFlying) return;
    CGFloat x = self.view.center.x + self.speed;
    if (x > self.scene.size.width + self.view.bounds.size.width * 0.5) {
        [self.scene removeSprite:self];
        return;
    }
    self.view.center = CGPointMake(x, self.view.center.y);
}
@end
