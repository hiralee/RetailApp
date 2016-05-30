//
//  CartPresenter.m
//  DemoApplication
//
//  Created by Hiralee Malaviya on 1/20/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import "CartPresenter.h"

@implementation CartPresenter

@synthesize wireframe;
@synthesize dataHandler;
@synthesize interactor;

- (NSMutableArray*) getAllProducts {
    return [self.interactor getAllProducts];
}

- (int) getProductTotal {
    return [self.interactor getProductTotal];
}

- (NSMutableArray*) getAllProductsAfterRemovingObjectAtIndex:(NSInteger)index {
    return [self.interactor getAllProductsAfterRemovingObjectAtIndex:index];
}

@end
