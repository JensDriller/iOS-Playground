//
//  MasterViewController.h
//  TwitterTrendingTopics
//
//  Created by Jens Driller on 29/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MasterViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate> {
    
    NSURLConnection *connectionInProgress;
    NSMutableData *JSONData;
    NSMutableArray *topicTitles;
    
}

@property (strong, nonatomic) NSMutableArray *topicTitles;

@end
