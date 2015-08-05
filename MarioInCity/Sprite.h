//
//  Sprite.h
//  SomeUIViewDemos
//
//  Created by Cuong Trinh on 7/23/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Scene.h"

@class Scene;

@interface Sprite : NSObject
@property (nonatomic, strong) UIView *view;
@property (nonatomic, weak) Scene *scene;
@property (nonatomic, strong) NSString* name;

- (instancetype) initWithName: (NSString*) name
                      ownView: (UIView*) view
                      inScene: (Scene*) scene;

- (instancetype) initWithName: (NSString*) name
                      inScene: (Scene*) scene;

- (void) animate; //All sprite must implement this method
@end
