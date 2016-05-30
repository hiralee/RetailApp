//
//  CartPresenter.h
//  DemoApplication
//
//  Created by Hiralee Malaviya on 1/20/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Presenter.h"
#import "CartInteractor.h"

@interface CartPresenter : NSObject <Presenter>

@property (nonatomic, retain) CartInteractor* interactor;

- (NSMutableArray*) getAllProducts;
- (int) getProductTotal;
- (NSMutableArray*) getAllProductsAfterRemovingObjectAtIndex:(NSInteger)index;

@end
