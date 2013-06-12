//
//  ViewController.h
//  iTutorial07
//
//  Created by Jens Driller on 14/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, retain) IBOutlet UITextField *field;

- (NSString *) pathOfFile;
- (void) applicationWillTerminate:(NSNotification *)notification;

@end
