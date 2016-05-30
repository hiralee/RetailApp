//
//  ProductDetailsModel.h
//  DemoApplication
//
//  Created by Hiralee Malaviya on 3/19/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProductInstance.h"

@interface ProductDetailsModel : NSObject

//@property (nonatomic, strong) NSString* model_name;
//@property (nonatomic, strong) NSString* model_image;
//@property (nonatomic, strong) NSString* model_price;

@property (nonatomic, strong) ProductInstance* productDetails;

- (ProductDetailsModel*) initWithProduct:(ProductInstance*) dictionary;
- (ProductInstance*) getProductDetails;
- (void) setCartProducts:(ProductInstance*) product;

@end
