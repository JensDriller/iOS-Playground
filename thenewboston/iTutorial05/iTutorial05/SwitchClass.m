//
//  SwitchClass.m
//  iTutorial05
//
//  Created by Jens Driller on 14/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "SwitchClass.h"
#import "RedClass.h"
#import "BlueClass.h"

@implementation SwitchClass

@synthesize redClass = _redClass;
@synthesize blueClass = _blueClass;

- (IBAction) switchViews:(id)sender {
    
    if (self.redClass.view.superview == nil) {
        
        if (self.redClass == nil) {
            RedClass *red = [[RedClass alloc]initWithNibName:@"RedWindow" bundle:nil];
            _redClass = red;
        }
        [_blueClass.view removeFromSuperview];
        [self.view insertSubview:_redClass.view atIndex:0];
        
    } else {
        
        // just in case object gets flushed from memory for any reason
        if (self.blueClass == nil) {
            BlueClass *blue = [[BlueClass alloc]initWithNibName:@"BlueWindow" bundle:nil];
            _blueClass = blue;
        }
        
        [_redClass.view removeFromSuperview];
        [self.view insertSubview:_blueClass.view atIndex:0];
        
    }
    
}

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
    if (self.blueClass.view.superview == nil) {
        self.blueClass = nil;
    } else {
        self.redClass = nil;
    }
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    BlueClass *blue = [[BlueClass alloc]initWithNibName:@"BlueWindow" bundle:nil];
    _blueClass = blue;
    
    // atIndex:0 --> insert behind everything (toolbar)
    [self.view insertSubview:blue.view atIndex:0];
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

@end
