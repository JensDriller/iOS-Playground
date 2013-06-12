//
//  DatePickerViewController.h
//  Pickers
//
//  Created by Jens Driller on 26/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DatePickerViewController : UIViewController

@property (nonatomic, retain) IBOutlet UIDatePicker *datePicker;

- (IBAction)buttonPressed;

@end
