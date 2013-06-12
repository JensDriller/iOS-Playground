//
//  ToDoItemController.h
//  ToDoList
//
//  Created by Jens Driller on 27/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ToDoItemController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UIButton *deleteButton;

@property (strong, nonatomic) NSString *textInToDoListArray;
@property (strong, nonatomic) NSNumber *rowInToDoListArray;

- (IBAction)saveButtonPressed;
- (IBAction)deleteButtonPressed;

@end
