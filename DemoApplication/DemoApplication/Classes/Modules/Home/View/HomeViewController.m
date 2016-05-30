//
//  AppWireframeTestCase.m
//  DemoApplication
//
//  Created by Hiralee Malaviya on 1/21/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import "HomeViewController.h"
#import "AppWireframe.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self customizeNavigationBar];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)customizeNavigationBar
{
    UIBarButtonItem *leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"menuImage.png"]
                                                                           style:UIBarButtonItemStylePlain
                                                                          target:self
                                                                          action:@selector(showSideMenu:)];
    
    self.navigationItem.leftBarButtonItem = leftBarButtonItem;
    
    UIBarButtonItem *rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"cart.png"]
                                                                          style:UIBarButtonItemStylePlain
                                                                         target:self
                                                                         action:@selector(showCart:)];
    
    self.navigationItem.rightBarButtonItem = rightBarButtonItem;
}

- (void)updateView:(NSDictionary *)viewParams
{
    
}

#pragma mark -
#pragma mark User Actions

- (void) showCart:(id)sender {
    [[AppWireframe wireframe] showCartScreen];
}

- (void)showSideMenu:(id)sender
{
    [[AppWireframe wireframe] showSideMenu];
}

@end
