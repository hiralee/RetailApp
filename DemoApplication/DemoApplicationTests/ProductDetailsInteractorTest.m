//
//  ProductDetailsInteractorTest.m
//  DemoApplication
//
//  Created by Hiralee Malaviya on 3/24/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ProductDetailsModel.h"
#import "ProductDB.h"
#import "ProductConstants.h"

@interface ProductDetailsInteractorTest : XCTestCase

@property (nonatomic, retain) ProductDetailsModel* model;
@property (nonatomic, retain) ProductDB* productDB;

@end

@implementation ProductDetailsInteractorTest

- (void)setUp {
    [super setUp];
    
    self.productDB = [ProductDB sharedInstance];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void) testProductDetailsFromModel {
    // GIVEN
    NSDictionary* details = [self.productDB getProductDetailsForKey:chair];
    
    // WHEN
    self.model = [[ProductDetailsModel alloc] initWithDictionary:details];
    NSDictionary* dictionary = [self.model getProductDetails];
    
    // THEN
    XCTAssertNotNil(dictionary);
}

@end