//
//  ArrayPickerViewController.h
//  Pickers
//
//  Created by Jens Driller on 26/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ArrayPickerViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate> {
    
    UIPickerView *picker;
    NSArray *array;
    
}

@property (nonatomic, retain) IBOutlet UIPickerView *picker;

- (IBAction)buttonPressed;

@end
