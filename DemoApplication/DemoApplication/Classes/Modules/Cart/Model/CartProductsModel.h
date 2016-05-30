//
//  CartProducts.h
//  DemoApplication
//
//  Created by Hiralee Malaviya on 1/20/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProductInstance.h"

@interface CartProductsModel : NSObject

@property (nonatomic, strong) NSMutableArray* products;

+ (CartProductsModel *)cartProducts;
- (void) addProductToCart:(ProductInstance*) productDetail;
- (NSMutableArray*) getAllProducts;
- (int) getProductTotal;
- (NSMutableArray*) getAllProductsAfterRemovingObjectAtIndex:(NSInteger)index;

@end
