//
//  ProductDetailsInteractor.m
//  DemoApplication
//
//  Created by Hiralee Malaviya on 1/20/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import "ProductDetailsInteractor.h"
#import "ProductInstance.h"

@implementation ProductDetailsInteractor

@synthesize model;

- (ProductInstance*) getProductDetailsFromModel {
    return [model getProductDetails];
}

- (void) setCartProducts:(ProductInstance*) product {
    [self.model setCartProducts:product];
}

@end
