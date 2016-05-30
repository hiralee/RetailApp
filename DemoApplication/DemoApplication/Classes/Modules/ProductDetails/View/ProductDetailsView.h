//
//  ProductDetailsView.h
//  DemoApplication
//
//  Created by Hiralee Malaviya on 1/20/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "View.h"
#import "ProductDetailsPresenter.h"

@interface ProductDetailsView : UIViewController <View>

@property (nonatomic, strong) NSString* productName;
@property (nonatomic, strong) NSString* productImageName;
@property (nonatomic, strong) NSString* productPrice;

@property (nonatomic,strong) IBOutlet UIButton* btnAddToCart;
@property (nonatomic,strong) IBOutlet UIImageView* imageView;
@property (nonatomic,strong) IBOutlet UILabel* lblPrice;

@property (nonatomic, retain) ProductDetailsPresenter* presenter;

@end
