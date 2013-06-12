//
//  DetailView.h
//  Storyboard_Universal
//
//  Created by Jens Driller on 15/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailView : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) NSString *textToDisplay;

@end
