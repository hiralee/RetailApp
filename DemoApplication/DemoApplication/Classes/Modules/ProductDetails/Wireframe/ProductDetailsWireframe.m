//
//  ProductDetailsWireframe.m
//  DemoApplication
//
//  Created by Hiralee Malaviya on 1/20/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import "ProductDetailsWireframe.h"
#import "ProductDetailsPresenter.h"
#import "ProductDetailsInteractor.h"
#import "ProductDetailsView.h"
#import "AppWireframe.h"

#import "ProductConstants.h"

@interface ProductDetailsWireframe ()
{
    ProductDetailsPresenter *presenter;
    ProductDetailsInteractor *interactor;
    ProductDetailsView *view;
}

@end

@implementation ProductDetailsWireframe

@synthesize container;
@synthesize callBackHandler;

- (void)executeWithActionParams:(id)actionParams
{
    ProductInstance* product = actionParams;
    
    interactor = [ProductDetailsInteractor new];
    interactor.model = [[ProductDetailsModel alloc] initWithProduct:product];
    
    presenter = [ProductDetailsPresenter new];
    presenter.dataHandler = interactor;
    presenter.wireframe = self;
    presenter.interactor = interactor;
    
    [self showProductScreen];
}

- (void)showProductScreen
{
    view = [[ProductDetailsView alloc] init];
    view.presenter = presenter;
    
    [self.container pushViewController:view
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

