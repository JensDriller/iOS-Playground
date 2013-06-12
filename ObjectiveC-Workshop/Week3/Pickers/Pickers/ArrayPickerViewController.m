//
//  ArrayPickerViewController.m
//  Pickers
//
//  Created by Jens Driller on 26/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ArrayPickerViewController.h"

@implementation ArrayPickerViewController

@synthesize picker;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        UITabBarItem *tbi = [self tabBarItem];
        [tbi setTitle:@"Simple"];
        
        UIImage *image = [UIImage imageNamed:@"dependenticon.png"];
        [tbi setImage:image];
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

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    array = [NSArray arrayWithObjects:@"String1", @"String2", @"String3", @"String4", @"String5", @"String6", nil];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark -
#pragma mark Picker Data Source Methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return array.count;
}
#pragma mark Picker Delegate Methods

- (UIView *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [array objectAtIndex:row];
}

- (IBAction)buttonPressed {
    
    int selectedRow = [self.picker selectedRowInComponent:0];
    // Pull information directly from model (in this case just the array)
    NSString *message = [NSString stringWithFormat:@"You selected: %@", [array objectAtIndex:selectedRow]];
    // Or: go through the delegate method
    //NSString *message = [NSString stringWithFormat:@"You selected: %@", [[picker delegate] pickerView:picker titleForRow:selectedRow forComponent:0]];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Item selected" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
    
}
@end
