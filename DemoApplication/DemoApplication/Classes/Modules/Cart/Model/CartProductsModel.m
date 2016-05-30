//
//  CartProducts.m
//  DemoApplication
//
//  Created by Hiralee Malaviya on 1/20/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import "CartProductsModel.h"
#import "ProductConstants.h"

@implementation CartProductsModel

@synthesize products;

+ (CartProductsModel *)cartProducts
{
    static dispatch_once_t onceToken;
    static CartProductsModel *cartProducts;
    
    dispatch_once(&onceToken, ^{
        cartProducts = [CartProductsModel new];
    });
    
    return cartProducts;
}

- (void) addProductToCart:(ProductInstance*) productDetail {
    if(products == nil) {
        products = [[NSMutableArray alloc] init];
    }
    
    NSData* encodedData = [NSKeyedArchiver archivedDataWithRootObject:productDetail];
    [products addObject:encodedData];
    
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    [prefs setObject:products forKey:@"products"];
}

- (NSMutableArray*) getAllProducts {
    if(products != nil) {
        return products;
    }
    return nil;
}

- (int) getProductTotal {
    int productTotal = 0;
    
    for(int i = 0; i < products.count; i++) {
        NSData* dictionaryData = [products objectAtIndex:i];
        ProductInstance* product = [NSKeyedUnarchiver unarchiveObjectWithData:dictionaryData];
        
        NSString* amount = product.price;
        
        productTotal += [amount intValue];
    }
    
    return productTotal;
}

- (NSMutableArray*) getAllProductsAfterRemovingObjectAtIndex:(NSInteger)index {
    [products removeObjectAtIndex:index];
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    [prefs setObject:products forKey:@"products"];
    
    return products;
}

@end
