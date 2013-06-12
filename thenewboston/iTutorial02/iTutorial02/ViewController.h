//
//  ViewController.h
//  iTutorial02
//
//  Created by Jens Driller on 13/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, retain) IBOutlet UITextField *name;
@property (nonatomic, retain) IBOutlet UITextField *pw;
@property (nonatomic, retain) IBOutlet UILabel *sliderLabel;

- (IBAction) hideKeyboard:(id)sender;
- (IBAction) tapBackground:(id)sender;
- (IBAction) sliding:(id)sender;

@end