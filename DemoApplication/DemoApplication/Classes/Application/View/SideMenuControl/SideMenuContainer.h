//
//  AppWireframeTestCase.m
//  DemoApplication
//
//  Created by Hiralee Malaviya on 1/21/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import "MFSideMenuContainerViewController.h"
#import "SideMenuViewController.h"
#import "CenterViewController.h"

@interface SideMenuContainer : MFSideMenuContainerViewController

@property (nonatomic, strong) CenterViewController *centerViewController;
@property (nonatomic, strong) SideMenuViewController *sideMenuViewController;

+ (SideMenuContainer *)container;

@end
