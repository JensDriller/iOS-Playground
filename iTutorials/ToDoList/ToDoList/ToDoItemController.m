//
//  ToDoItemController.m
//  ToDoList
//
//  Created by Jens Driller on 27/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ToDoItemController.h"

@implementation ToDoItemController

@synthesize textField;
@synthesize deleteButton;

@synthesize textInToDoListArray;
@synthesize rowInToDoListArray;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.textField becomeFirstResponder];
    
    if(self.textInToDoListArray) {        
        self.textField.text = self.textInToDoListArray;        
    }
    
    if(!self.rowInToDoListArray) {
        self.deleteButton.hidden = YES;
    }
}


- (void)viewDidUnload
{
    [self setTextField:nil];
    [self setDeleteButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)saveButtonPressed {

    [[NSNotificationCenter defaultCenter] postNotificationName:@"saveItem" object:self];
    [self.navigationController popViewControllerAnimated:YES];
    
}

- (IBAction)deleteButtonPressed {

    [[NSNotificationCenter defaultCenter] postNotificationName:@"deleteItem" object:self];
    [self.navigationController popViewControllerAnimated:YES];
    
}

@end
