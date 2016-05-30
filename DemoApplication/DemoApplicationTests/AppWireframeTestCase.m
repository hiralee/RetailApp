//
//  AppWireframeTestCase.m
//  DemoApplication
//
//  Created by Hiralee Malaviya on 1/21/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "AppWireframe.h"

@interface AppWireframeTestCase : XCTestCase

@end

@implementation AppWireframeTestCase

- (void)setUp {
    [super setUp];
}

- (void) testAppWireframeIsSingleton {
    // GIVEN
    AppWireframe* wireframe1 = [AppWireframe wireframe];
    AppWireframe* wireframe2 = [AppWireframe wireframe];
    
    // WHEN
    
    
    // THEN
    XCTAssertEqualObjects(wireframe1, wireframe2);
}

- (void)tearDown {
    [super tearDown];
}

@end
