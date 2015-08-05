//
//  Sprite.m
//  SomeUIViewDemos
//
//  Created by Cuong Trinh on 7/23/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import "Sprite.h"

@implementation Sprite

- (instancetype) initWithName: (NSString*) name
                      ownView: (UIView*) view
                      inScene: (Scene*) scene {
    if (self = [super init]) {
        self.name = name;
        self.view = view;
        self.scene = scene;
    }
    return self;
}

- (instancetype) initWithName: (NSString*) name
                      inScene: (Scene*) scene {
    if (self = [super init]) {
        self.name = name;
        self.scene = scene;        
    }
    return self;
}
-(void) animate {
    
}
@end
