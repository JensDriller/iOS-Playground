//
//  RootViewController.h
//  ToDoList
//
//  Created by Jens Driller on 27/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UITableViewController

@property (nonatomic, retain) NSMutableArray *toDoListArray;

- (void) saveToDoListArray;
- (void) loadToDoListArray;

@end
