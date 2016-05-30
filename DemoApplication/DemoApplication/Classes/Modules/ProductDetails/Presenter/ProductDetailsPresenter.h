//
//  ProductDetailsPresenter.h
//  DemoApplication
//
//  Created by Hiralee Malaviya on 1/20/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Presenter.h"
#import "ProductDetailsInteractor.h"
#import "ProductInstance.h"

@interface ProductDetailsPresenter : NSObject <Presenter>

@property (nonatomic, retain) ProductDetailsInteractor* interactor;

- (ProductInstance*) getProductDetails;
- (void) setCartProducts:(ProductInstance*) product;

@end
