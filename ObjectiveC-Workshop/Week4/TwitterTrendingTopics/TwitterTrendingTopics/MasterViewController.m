//
//  MasterViewController.m
//  TwitterTrendingTopics
//
//  Created by Jens Driller on 29/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "MasterViewController.h"

@implementation MasterViewController

@synthesize topicTitles;

- (void)awakeFromNib
{
    [super awakeFromNib];
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
    
    topicTitles = [[NSMutableArray alloc]init];
	
    NSString *urlString = @"https://api.twitter.com/1/trends/daily.json";
    NSURL *JSONURL = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:JSONURL cachePolicy:NSURLRequestReloadIgnoringCacheData timeoutInterval:10];
    if(connectionInProgress) {
        [connectionInProgress cancel];
    }
    connectionInProgress = [[NSURLConnection alloc] initWithRequest:request delegate:self startImmediately:YES];
    
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    JSONData = [NSMutableData data];
    [JSONData setLength:0];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    // Append the new data to receivedData.
    [JSONData appendData:data];
}

-(void) connectionDidFinishLoading:(NSURLConnection *)connection
{
    
    if ([JSONData length] > 0) {
		NSError *error = nil;
		
		NSDictionary *results = [NSJSONSerialization JSONObjectWithData:JSONData
                                                                options:kNilOptions error:&error];
        NSArray *topics = [[results objectForKey:@"trends"] objectForKey:@"2011-11-28 17:40"];
        
        for (NSDictionary *topic in topics) {
            
            NSString *title = [topic objectForKey:@"name"];
            [self.topicTitles addObject:[NSString stringWithString:title]];   
            
        } 
        
        NSLog(@"%i", self.topicTitles.count);
        
	} else {
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Unable to connect to Flickr. Please make sure you are connected to a network." delegate:nil cancelButtonTitle:@"Close" otherButtonTitles:nil];
		[alert show];
	}

	[self.tableView reloadData];
    
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    connectionInProgress = nil;
    
    NSString *errorString = [NSString stringWithFormat:@"Fetch failed: %@",
                             [error localizedDescription]];
    UIActionSheet *aSheet = [[UIActionSheet alloc] initWithTitle:errorString delegate:nil cancelButtonTitle:@"OK" destructiveButtonTitle:nil otherButtonTitles:nil, nil];
    [aSheet showInView:[[self view]window]];
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

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    return @"Trending Today";
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.topicTitles.count;
}


- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if(indexPath.row % 2 != 0) {
        cell.backgroundColor = [UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1];
    } else {
        cell.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1];        
    }
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"topicCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    cell.textLabel.text = [self.topicTitles objectAtIndex:indexPath.row];
    return cell;
}

@end
