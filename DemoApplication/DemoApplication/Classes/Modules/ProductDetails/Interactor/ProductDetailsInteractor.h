//
//  ProductDetailsInteractor.h
//  DemoApplication
//
//  Created by Hiralee Malaviya on 1/20/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Interactor.h"
#import "ProductDetailsModel.h"
#import "ProductInstance.h"

@interface ProductDetailsInteractor : NSObject <Interactor>

@property(nonatomic,strong) ProductDetailsModel* model;

- (ProductInstance*) getProductDetailsFromModel;
- (void) setCartProducts:(ProductInstance*) product;

@end