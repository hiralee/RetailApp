//
//  ProductInstance.h
//  DemoApplication
//
//  Created by Hiralee Malaviya on 4/20/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ProductInstance : NSObject

@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* imageName;
@property (nonatomic, strong) NSString* price;

- (ProductInstance *) initWithProductDetails:(NSDictionary*) productDetails;

@end
