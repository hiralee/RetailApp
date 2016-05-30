//
//  AppWireframeTestCase.m
//  DemoApplication
//
//  Created by Hiralee Malaviya on 1/21/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import "AppWireframe.h"
#import "SideMenuContainer.h"

#import "AppWindow.h"
#import "HomeWireframe.h"
#import "ProductConstants.h"
#import "ProductDB.h"
#import "ProductDetailsWireframe.h"
#import "CartWireframe.h"

@interface AppWireframe () <UINavigationControllerDelegate, SideMenuViewDelegate>
{
    AppWindow *appWindow;
    NSArray* electronicsArray;
    NSArray* furnitureArray;
    ProductDB* productDB;
}

@end

@implementation AppWireframe

@synthesize container = appWindow;

+ (AppWireframe *)wireframe
{
    static dispatch_once_t onceToken;
    static AppWireframe *appWireframe;
    
    dispatch_once(&onceToken, ^{
        appWireframe = [AppWireframe new];
    });
    
    return appWireframe;
}

- (void)executeWithActionParams:(NSDictionary *)actionParams
{
    [self showStartupScreen];
}

-(void)showStartupScreen
{
    productDB = [ProductDB sharedInstance];
    [self setCategories];
    [self showNavigationBar];
    [self executeHomeFlow];
}

- (void) setCategories{
    electronicsArray = [NSArray arrayWithObjects:@"microwaveOven", @"television", @"vacuumCleaner", nil];
    furnitureArray = [NSArray arrayWithObjects:@"table", @"chair", @"almirah", nil];
}

- (void)showSideMenu
{
    SideMenuContainer *sideMenuContainer = (SideMenuContainer *)appWindow.rootViewController;
    if(sideMenuContainer.menuState == MFSideMenuStateLeftMenuOpen) {
        [sideMenuContainer setMenuState:MFSideMenuStateClosed];
    }
    else if (sideMenuContainer.menuState == MFSideMenuStateClosed) {
        [sideMenuContainer setMenuState:MFSideMenuStateLeftMenuOpen];
    }
    
}

- (void)showNavigationBar
{
    appWindow.rootViewController = nil;
    
    CenterViewController *centerController_ = [CenterViewController new];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"SideMenuViewController" bundle:nil];
    SideMenuViewController *sideMenuViewController_ = [storyboard instantiateViewControllerWithIdentifier:@"SideMenuViewController"];
    sideMenuViewController_.delegate = self;
    
    MFSideMenuContainerViewController* menuContainer = [MFSideMenuContainerViewController containerWithCenterViewController:centerController_ leftMenuViewController:sideMenuViewController_ rightMenuViewController:nil];
    
    appWindow.rootViewController = menuContainer;
}

- (void) showProductScreenWithDetails:(ProductInstance*)details {
    ProductDetailsWireframe *wireframe = [ProductDetailsWireframe new];
    
    wireframe.container = [(SideMenuContainer *)appWindow.rootViewController centerViewController];
    wireframe.callBackHandler = self;
    
    [wireframe executeWithActionParams:details];
}

- (void) showCartScreen {
    CartWireframe *wireframe = [CartWireframe new];
    
    wireframe.container = [(SideMenuContainer *)appWindow.rootViewController centerViewController];
    wireframe.callBackHandler = self;
    
    [wireframe executeWithActionParams:nil];
}

- (void)executeHomeFlow
{
    HomeWireframe *wireframe = [HomeWireframe new];
    
    wireframe.container = [(SideMenuContainer *)appWindow.rootViewController centerViewController];
    wireframe.callBackHandler = self;
    
    [wireframe executeWithActionParams:nil];
}

- (void)doNextWithActionParams:(NSDictionary *)actionParams
{
    
}

#pragma mark -
#pragma mark SideMenu Delegate
- (void)sideMenu:(SideMenuViewController *)sideMenu didSelectOptionAtIndex:(NSIndexPath *)index
{
    NSDictionary* details;
    
    switch (index.section) {
        case 0:
            if(index.row == 0) {
                details = [productDB getProductDetailsForKey:microwaveOven];
            }
            else if (index.row == 1) {
                details = [productDB getProductDetailsForKey:television];
            }
            else {
                details = [productDB getProductDetailsForKey:vacuumCleaner];
            }
            break;
            
        case 1:
            if(index.row == 0) {
                details = [productDB getProductDetailsForKey:table];
            }
            else if (index.row == 1) {
                details = [productDB getProductDetailsForKey:chair];
            }
            else {
                details = [productDB getProductDetailsForKey:almirah];
            }
            break;
            
        default:
            break;
    }
    
    [self showSideMenu];
    
    ProductDetailsWireframe* wireframe = [ProductDetailsWireframe new];
    wireframe.container = [(SideMenuContainer *)appWindow.rootViewController centerViewController];
    wireframe.callBackHandler = self;
    
    ProductInstance* product = [[ProductInstance alloc] initWithProductDetails:details];
    
    [wireframe executeWithActionParams:product];
}

-(void)handleError:(NSError*)error
{
    
}


@end
