//
//  AppWireframeTestCase.m
//  DemoApplication
//
//  Created by Hiralee Malaviya on 1/21/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol View;
@protocol Interactor;
@protocol Wireframe;

@protocol Presenter <NSObject>

@optional

@property (nonatomic, strong) id <Interactor> dataHandler;
@property (nonatomic, strong) id <Wireframe> wireframe;

@end
