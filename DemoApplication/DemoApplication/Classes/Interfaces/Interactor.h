//
//  AppWireframeTestCase.m
//  DemoApplication
//
//  Created by Hiralee Malaviya on 1/21/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Presenter.h"

@protocol Interactor <NSObject>

@optional

@property (nonatomic, strong) id <Presenter> presenter;

@end
