//
//  AppWireframeTestCase.m
//  DemoApplication
//
//  Created by Hiralee Malaviya on 1/21/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import "SideMenuViewController.h"

@interface SideMenuViewController ()
{
}

@end

@implementation SideMenuViewController
@synthesize tblView;

#pragma mark -
#pragma mark View Life-Cycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

#pragma mark -
#pragma mark TableView Delegates

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    if(section == 0){
        return 3;
    }
    else {
        return 3;
    }
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 40;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    if (section == 0) {
        return @"Electronics";
    }
    else {
        return @"Furniture";
    }
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    switch (indexPath.section) {
        case 0:
            if(indexPath.row == 0) {
                cell.textLabel.text = @"Microwave Oven";
            }
            else if (indexPath.row == 1) {
                cell.textLabel.text = @"Television";
            }
            else {
                cell.textLabel.text = @"Vacuum Cleaner";
            }
            break;
            
        case 1:
            if(indexPath.row == 0) {
                cell.textLabel.text = @"Table";
            }
            else if (indexPath.row == 1) {
                cell.textLabel.text = @"Chair";
            }
            else {
                cell.textLabel.text = @"Almirah";
            }
            break;
            
        default:
            break;
    }
    
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [self.delegate sideMenu:self didSelectOptionAtIndex:indexPath];
}

@end
