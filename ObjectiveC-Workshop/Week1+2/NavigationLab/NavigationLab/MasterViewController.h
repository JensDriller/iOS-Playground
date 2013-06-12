//
//  MasterViewController.h
//  NavigationLab
//
//  Created by Jens Driller on 14/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@class DetailViewController;

@interface MasterViewController : UITableViewController <UITableViewDataSource>

@property (strong, nonatomic) DetailViewController *detailViewController;

@end
