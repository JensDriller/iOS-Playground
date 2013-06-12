//
//  RootViewController.m
//  ToDoList
//
//  Created by Jens Driller on 27/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"
#import "ToDoItemController.h"

@implementation RootViewController

@synthesize toDoListArray;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
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

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self loadToDoListArray];
    if(!self.toDoListArray) {
        self.toDoListArray = [NSMutableArray arrayWithObjects:@"Beer", @"Blu-Ray", @"Bananas", @"Apples", @"Milk", nil];
    }
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notificationSave:) name:@"saveItem" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notificationDelete:) name:@"deleteItem" object:nil];

}

- (void) notificationSave:(NSNotification*) notification {
    
    dlog(@"Habe bekommen %@", notification.name);
    ToDoItemController *toDoItemController = notification.object;
    
    // if row is passed >> update!
    if(toDoItemController.rowInToDoListArray) {
        
        NSInteger row = [toDoItemController.rowInToDoListArray intValue];
        [self.toDoListArray replaceObjectAtIndex:row withObject:toDoItemController.textField.text];
        
        // simple: reload entire table
        //[self.tableView reloadData];
        
        // reload only particular (edited) cell
        [self.tableView reloadRowsAtIndexPaths:[NSArray arrayWithObject:[NSIndexPath indexPathForRow:row inSection:0]] withRowAnimation:YES];
        
    } // else >> insert! 
    else {
        
        [self.toDoListArray addObject:toDoItemController.textField.text];
        [self.tableView reloadData];
        
    }
    [self saveToDoListArray];
    
}

- (void) notificationDelete:(NSNotification*) notification {
    
    dlog(@"Habe bekommen %@", notification.name);
    ToDoItemController *toDoItemController = notification.object;
    NSInteger row = [toDoItemController.rowInToDoListArray intValue];
    [self.toDoListArray removeObjectAtIndex:row];
    [self.tableView reloadData];
    [self saveToDoListArray];
    
}

- (IBAction) sort:(id)sender {
    
    [self.toDoListArray sortUsingSelector:@selector(localizedCompare:)];
    [self.tableView reloadData];
    [self saveToDoListArray];
    
}

- (NSString*) saveFilePath:(NSString*)fileName {
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);    
    NSString *documentDirectory = [NSString stringWithFormat:@"%@/", [paths objectAtIndex:0]];
    NSString *strPath = [documentDirectory stringByAppendingPathComponent:fileName];       
    return strPath;
    
}

- (void) saveToDoListArray {
    
    NSString *filePath = [self saveFilePath:@"toDoList.data"];
    dlog(@"%@", filePath);
    [self.toDoListArray writeToFile:filePath atomically:YES];
    
}

- (void) loadToDoListArray {
    
    NSString *filePath = [self saveFilePath:@"toDoList.data"];
    self.toDoListArray = [NSMutableArray arrayWithContentsOfFile:filePath];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
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
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.toDoListArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"itemCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    cell.textLabel.text = [self.toDoListArray objectAtIndex:indexPath.row];
    return cell;
}

#pragma mark - Table view delegate

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    ToDoItemController *toDoItemController = segue.destinationViewController;
    
    if([segue.identifier isEqualToString:@"showItem"]) {        
        
        toDoItemController.textInToDoListArray = [self.toDoListArray objectAtIndex:self.tableView.indexPathForSelectedRow.row];
        toDoItemController.rowInToDoListArray = [NSNumber numberWithInt:self.tableView.indexPathForSelectedRow.row];
        
    } else if([segue.identifier isEqualToString:@"addItem"]) {
        
        //
        
    }
    
}

@end
