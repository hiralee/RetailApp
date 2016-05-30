//
//  ProductDetailsModel.m
//  DemoApplication
//
//  Created by Hiralee Malaviya on 3/19/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import "ProductDetailsModel.h"
#import "ProductConstants.h"
#import "CartProductsModel.h"
#import "ProductInstance.h"

@implementation ProductDetailsModel

- (ProductDetailsModel*) initWithProduct:(ProductInstance*) product {
    if(self = [super init]) {

        self.productDetails = product;
    }
    return self;
}

- (ProductInstance*) getProductDetails {
    return self.productDetails;
}

- (void) setCartProducts:(ProductInstance*) product {
    CartProductsModel* cartProduct = [CartProductsModel cartProducts];
    [cartProduct addProductToCart:product];
}

@end
