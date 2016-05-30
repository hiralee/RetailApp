//
//  CartInteractor.h
//  DemoApplication
//
//  Created by Hiralee Malaviya on 1/20/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Interactor.h"
#import "CartProductsModel.h"

@interface CartInteractor : NSObject <Interactor>

@property(nonatomic,strong) CartProductsModel* model;

- (NSMutableArray*) getAllProducts;
- (int) getProductTotal;
- (NSMutableArray*) getAllProductsAfterRemovingObjectAtIndex:(NSInteger)index;

@end
