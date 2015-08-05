//
//  Cloud.m
//  SomeUIViewDemos
//
//  Created by Cuong Trinh on 7/24/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import "Cloud.h"

@implementation Cloud
-(void) animate {
    self.view.center = CGPointMake(self.view.center.x + self.speed, self.view.center.y);
    if (self.view.frame.origin.x + self.view.bounds.size.width < 0) {  //it passes left edge of screen
        self.view.center = CGPointMake(self.scene.size.width + self.view.bounds.size.width * 0.5, self.view.center.y);
    }
}
@end
