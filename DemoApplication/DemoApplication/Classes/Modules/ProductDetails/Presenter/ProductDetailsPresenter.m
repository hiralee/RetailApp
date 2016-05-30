//
//  ProductDetailsPresenter.m
//  DemoApplication
//
//  Created by Hiralee Malaviya on 1/20/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import "ProductDetailsPresenter.h"
#import "Interactor.h"
#import "Wireframe.h"
#import "View.h"

@implementation ProductDetailsPresenter

@synthesize wireframe;
@synthesize dataHandler;

- (ProductInstance*) getProductDetails {
    return [self.interactor getProductDetailsFromModel];
}

- (void) setCartProducts:(ProductInstance*) product {
    [self.interactor setCartProducts:product];
}

@end
