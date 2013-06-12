//
//  ViewController.m
//  iTutorial03
//
//  Created by Jens Driller on 13/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize leftSwitch, rightSwitch, button;

- (IBAction) mainSwitchChanged:(id)sender {
    
    if ([sender selectedSegmentIndex] == 0) {
        leftSwitch.hidden = rightSwitch.hidden = NO;
        button.hidden = YES;
    } else {
        leftSwitch.hidden = rightSwitch.hidden = YES;
        button.hidden = NO;
    }
    
}

- (IBAction) smallSwitchChanged:(id)sender {
    
    UISwitch *mySwitch = (UISwitch *) sender;
    [leftSwitch setOn:mySwitch.isOn animated:YES];
    [rightSwitch setOn:mySwitch.isOn animated:YES];
    
}

- (IBAction) buttonPressed {
    
    // delegate = code that runs automatically at a specified point
    // delegate:self because the built-in method to handle UIActionSheet
    // is adopted as a protocol in the same (!) class
    UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                 initWithTitle:@"Wanna see an alert?" 
                                 delegate:self
                                 cancelButtonTitle:@"Cancel"
                                 destructiveButtonTitle:@"Yeah, let's see it!"
                                 otherButtonTitles:@"other button?", nil];
    [actionSheet showInView:self.view];
    
}

// adopted method from 'UIActionSheetDelegate' protocol
- (void) actionSheet: (UIActionSheet *) actionSheet willDismissWithButtonIndex:(NSInteger)buttonIndex {
    
    if (buttonIndex == [actionSheet destructiveButtonIndex]) {
        UIAlertView *alert = [[UIAlertView alloc]
                               initWithTitle:@"OK, here it is!" 
                               message:@"Nice message comes here..." 
                               delegate:nil 
                               cancelButtonTitle:@"Done!" 
                               otherButtonTitles:@"other", @"buttons", @"again?", nil];
        [alert show];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
