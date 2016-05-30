//
//  CartInteractor.m
//  DemoApplication
//
//  Created by Hiralee Malaviya on 1/20/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import "CartInteractor.h"

@implementation CartInteractor

@synthesize model;

- (NSMutableArray*) getAllProducts {
    return [model getAllProducts];
}

- (int) getProductTotal {
    return [model getProductTotal];
}

- (NSMutableArray*) getAllProductsAfterRemovingObjectAtIndex:(NSInteger)index {
    return [model getAllProductsAfterRemovingObjectAtIndex:index];
}

@end
