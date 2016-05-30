//
//  AppWireframeTestCase.m
//  DemoApplication
//
//  Created by Hiralee Malaviya on 1/21/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProductInstance.h"

@protocol Presenter;

@protocol View <NSObject>

@optional

@property (nonatomic, strong) id <Presenter> eventHandler;

- (void)updateView:(id)viewParams;

@end
