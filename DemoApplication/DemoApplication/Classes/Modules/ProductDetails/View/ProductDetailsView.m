//
//  ProductDetailsView.m
//  DemoApplication
//
//  Created by Hiralee Malaviya on 1/20/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import "ProductDetailsView.h"
#import "AppWireframe.h"
#import "CartProductsModel.h"
#import "ProductConstants.h"
#import "ProductInstance.h"

@interface ProductDetailsView ()

@end

@implementation ProductDetailsView

@synthesize productImageName, productName, productPrice, lblPrice, btnAddToCart, imageView;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self customizeNavigationBar];
}

- (void)viewWillAppear:(BOOL)animated {
    ProductInstance* params = [self.presenter getProductDetails];
    
    [self updateView:params];
}

- (void)customizeNavigationBar
{
    UIBarButtonItem *rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"cart.png"]
                                                                           style:UIBarButtonItemStylePlain
                                                                          target:self
                                                                          action:@selector(showCart:)];
    
    self.navigationItem.rightBarButtonItem = rightBarButtonItem;
}

- (void)updateView:(ProductInstance*)product
{
    self.productImageName = product.imageName;
    self.productName = product.name;
    self.productPrice = product.price;

    self.title = productName;
    [self.imageView setImage:[UIImage imageNamed:productImageName]];
    [self.lblPrice setText:productPrice];
}

#pragma mark -
#pragma mark User Actions

- (IBAction)addToCart:(id)sender {
    ProductInstance* productDetails = [self.presenter getProductDetails];
    [self.presenter setCartProducts:productDetails];
}

- (void) showCart:(id)sender {
    [[AppWireframe wireframe] showCartScreen];
}

- (void)showSideMenu:(id)sender
{
    [[AppWireframe wireframe] showSideMenu];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
