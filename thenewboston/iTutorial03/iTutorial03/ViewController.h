//
//  ViewController.h
//  iTutorial03
//
//  Created by Jens Driller on 13/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIActionSheetDelegate>

@property (nonatomic, retain) IBOutlet UISwitch *leftSwitch;
@property (nonatomic, retain) IBOutlet UISwitch *rightSwitch;
@property (nonatomic, retain) IBOutlet UIButton *button;

- (IBAction) mainSwitchChanged:(id)sender;
- (IBAction) smallSwitchChanged:(id)sender;
- (IBAction) buttonPressed;

@end
