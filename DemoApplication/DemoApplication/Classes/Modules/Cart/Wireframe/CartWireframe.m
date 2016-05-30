//
//  CartWireframe.m
//  DemoApplication
//
//  Created by Hiralee Malaviya on 1/20/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import "CartWireframe.h"
#import "CartPresenter.h"
#import "CartInteractor.h"
#import "CartViewController.h"
#import "AppWireframe.h"

@interface CartWireframe()
{
    CartPresenter *presenter;
    CartInteractor *interactor;
    CartViewController *cartView;
}

@end

@implementation CartWireframe

@synthesize container;
@synthesize callBackHandler;

- (void)executeWithActionParams:(NSDictionary *)actionParams
{
    interactor = [CartInteractor new];
    interactor.model = [CartProductsModel cartProducts];
    
    presenter = [CartPresenter new];
    presenter.dataHandler = interactor;
    presenter.wireframe = self;
    presenter.interactor = interactor;
    
    [self showCartScreen];
}

- (void)showCartScreen
{
    cartView = [[CartViewController alloc] init];
    cartView.presenter = presenter;
    
    [self.container pushViewController:cartView
                              animated:YES];
}

- (void)doNextWithActionParams:(NSDictionary *)actionParams
{
    
}

- (id <View>)view
{
    id <View> currentView = (id<View>)[(UINavigationController *)self.container visibleViewController];
    return currentView;
}

@end
