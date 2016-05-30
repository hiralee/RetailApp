//
//  ProductDB.m
//  DemoApplication
//
//  Created by Hiralee Malaviya on 1/20/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import "ProductDB.h"
#import "ProductConstants.h"

@implementation ProductDB

+ (ProductDB *)sharedInstance {
    static dispatch_once_t onceToken;
    static ProductDB *productDB;
    
    dispatch_once(&onceToken, ^{
        productDB = [ProductDB new];
    });
    
    return productDB;
}

- (NSDictionary*) getProductDetailsForKey:(NSString*) key {
    NSDictionary *products = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"products" ofType:@"plist"]];
    
    return [products objectForKey:key];
}

@end
