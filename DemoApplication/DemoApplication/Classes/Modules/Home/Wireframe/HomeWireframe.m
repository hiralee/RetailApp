//
//  AppWireframeTestCase.m
//  DemoApplication
//
//  Created by Hiralee Malaviya on 1/21/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import "HomeWireframe.h"
#import "HomePresenter.h"
#import "HomeInteractor.h"
#import "HomeViewController.h"
#import "AppWireframe.h"

@interface HomeWireframe ()
{
    HomePresenter *presenter;
    HomeInteractor *interactor;
    HomeViewController *homeView;
}

@end

@implementation HomeWireframe

@synthesize container;
@synthesize callBackHandler;

- (void)executeWithActionParams:(NSDictionary *)actionParams
{
    interactor = [HomeInteractor new];
    
    presenter = [HomePresenter new];
    presenter.dataHandler = interactor;
    presenter.wireframe = self;
    
    [self showHomeScreen];
}

- (void)showHomeScreen
{
    homeView = [[HomeViewController alloc] init];
//    homeView.eventHandler = presenter;
    
    [self.container pushViewController:homeView
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
