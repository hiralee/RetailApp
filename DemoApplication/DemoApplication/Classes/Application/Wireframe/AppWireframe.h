//
//  AppWireframeTestCase.m
//  DemoApplication
//
//  Created by Hiralee Malaviya on 1/21/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Wireframe.h"
#import "ProductInstance.h"

@interface AppWireframe : NSObject <Wireframe>

+ (AppWireframe *)wireframe;

- (void)showStartupScreen;

- (void)showSideMenu;

- (void) showProductScreenWithDetails:(ProductInstance*)details;

- (void) showCartScreen;


@end
