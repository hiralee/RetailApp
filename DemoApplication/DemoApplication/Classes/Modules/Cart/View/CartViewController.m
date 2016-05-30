//
//  CartViewController.m
//  DemoApplication
//
//  Created by Hiralee Malaviya on 1/20/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import "CartViewController.h"
#import "AppWireframe.h"
#import "ProductConstants.h"
#import "Interactor.h"

@interface CartViewController ()
{
    int priceTotal;
}

@property (nonatomic, retain) IBOutlet UITableView* tblView;
@property (nonatomic, retain) NSMutableArray* product;

@end

@implementation CartViewController

@synthesize eventHandler, lblTotalPrice, presenter;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self customizeNavigationBar];
    
    self.product = [[NSMutableArray alloc] init];
    priceTotal = 0;
}

- (void)viewWillAppear:(BOOL)animated {
    self.product = [self.presenter getAllProducts];
    
    priceTotal = [self.presenter getProductTotal];
    self.lblTotalPrice.text = [NSString stringWithFormat:@"%d",priceTotal];
    
    [self.tblView reloadData];
}

- (void)customizeNavigationBar
{
    self.title = @"Cart";
    
    UIBarButtonItem *leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"menuImage.png"]
                                                                          style:UIBarButtonItemStylePlain
                                                                         target:self
                                                                         action:@selector(showSideMenu:)];
    
    self.navigationItem.leftBarButtonItem = leftBarButtonItem;
}

#pragma mark -
#pragma mark User Actions

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.product.count;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    self.product = [self.presenter getAllProductsAfterRemovingObjectAtIndex:indexPath.row];
    [self.tblView reloadData];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    NSData* dictionaryData = [self.product objectAtIndex:indexPath.row];
    ProductInstance* product = [NSKeyedUnarchiver unarchiveObjectWithData:dictionaryData];
    
    cell.textLabel.text = product.name;
    cell.detailTextLabel.text = product.price;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSData* dictionaryData = [self.product objectAtIndex:indexPath.row];
    ProductInstance* product = [NSKeyedUnarchiver unarchiveObjectWithData:dictionaryData];
    
    [self showProductDetails:product];
}

- (void) showProductDetails:(ProductInstance*)details {
    [[AppWireframe wireframe] showProductScreenWithDetails:details];
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
