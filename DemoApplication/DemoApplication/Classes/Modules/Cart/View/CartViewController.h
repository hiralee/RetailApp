//
//  CartViewController.h
//  DemoApplication
//
//  Created by Hiralee Malaviya on 1/20/16.
//  Copyright © 2016 Malaviya, Hiralee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "View.h"
#import "CartPresenter.h"

@interface CartViewController : UIViewController <View, UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) IBOutlet UILabel* lblTotalPrice;
@property (nonatomic, retain) CartPresenter* presenter;


@end
