//
//  AppWireframeTestCase.m
//  DemoApplication
//
//  Created by Hiralee Malaviya on 1/21/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SideMenuViewDelegate;

@interface SideMenuViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) id <SideMenuViewDelegate> delegate;
@property (nonatomic, weak) IBOutlet UITableView *tblView;

@end

@protocol SideMenuViewDelegate <NSObject>

- (void)sideMenu:(SideMenuViewController *)sideMenu didSelectOptionAtIndex:(NSIndexPath *)index;

@end
