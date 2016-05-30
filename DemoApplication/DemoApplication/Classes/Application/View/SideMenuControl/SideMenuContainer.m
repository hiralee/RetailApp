//
//  AppWireframeTestCase.m
//  DemoApplication
//
//  Created by Hiralee Malaviya on 1/21/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import "SideMenuContainer.h"

@interface SideMenuContainer ()

@end

@implementation SideMenuContainer

@synthesize centerViewController,sideMenuViewController;

+ (SideMenuContainer *)container
{
    static dispatch_once_t onceToken;
    static SideMenuContainer *sideMenuContainer;
    
    dispatch_once(&onceToken, ^{
        sideMenuContainer = [SideMenuContainer new];
    });
    
    return sideMenuContainer;
}

- (id)init
{
    self = [super init];
    if (self) {
        [self configureControllers];
    }
    
    return self;
}

- (void)configureControllers
{
    CenterViewController *centerController_ = [CenterViewController new];
    centerViewController.view.backgroundColor = [UIColor magentaColor];
    self.centerViewController = centerController_;
    
    SideMenuViewController *sideMenuViewController_ = [SideMenuViewController new];
    self.sideMenuViewController = sideMenuViewController_;
    self.leftMenuViewController = sideMenuViewController_;
    [self setLeftMenuViewController:sideMenuViewController_];
    
    self.panMode = MFSideMenuPanModeNone;
}

@end
