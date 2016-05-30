//
//  ProductInstance.m
//  DemoApplication
//
//  Created by Hiralee Malaviya on 4/20/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import "ProductInstance.h"
#import "ProductConstants.h"

@implementation ProductInstance

- (ProductInstance *) initWithProductDetails:(NSDictionary*) productDetails {
    self = [super init];
    
    if(self) {
        self.imageName = [productDetails objectForKey:image];
        self.name = [productDetails objectForKey:name];
        self.price = [productDetails objectForKey:price];
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.imageName forKey:@"imageName"];
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.price forKey:@"price"];
}

-(id)initWithCoder:(NSCoder *)aDecoder{
    if(self = [super init]){
        self.imageName = [aDecoder decodeObjectForKey:@"imageName"];
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.price = [aDecoder decodeObjectForKey:@"price"];
    }
    return self;
}

@end
