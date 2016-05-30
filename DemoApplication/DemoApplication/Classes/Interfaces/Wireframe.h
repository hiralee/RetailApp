//
//  AppWireframeTestCase.m
//  DemoApplication
//
//  Created by Hiralee Malaviya on 1/21/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol View;

@protocol Wireframe <NSObject>

@optional

@property (nonatomic, strong) id container;
@property (nonatomic, strong) id <Wireframe> callBackHandler;

- (id<View>)view;

- (void)executeWithActionParams:(id)actionParams;

- (void)doNextWithActionParams:(NSDictionary *)actionParams;
- (void)doPreviousWithActionParams:(NSDictionary *)actionParams;
- (void)handleError:(NSError*)error;

@end
