//
//  ProductDB.h
//  DemoApplication
//
//  Created by Hiralee Malaviya on 1/20/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ProductDB : NSObject

+ (ProductDB *)sharedInstance;
- (NSDictionary*) getProductDetailsForKey:(NSString*) key;

@end
