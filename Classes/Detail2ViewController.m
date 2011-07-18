//
//  Detail2ViewController.m
//  Radar
//
//  Created by Vladimir Fleurima (iBook) on 7/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Detail2ViewController.h"


@implementation Detail2ViewController
@synthesize friend;

- (id)initWithFriend:(Friend *)_friend {
    self = [super initWithNibName:@"Detail2ViewController" bundle:nil];
    if (self) {
		self.friend = _friend;		
    }
    return self;	
}

#pragma mark -
#pragma mark View lifecycle


- (void)viewDidLoad {
    [super viewDidLoad];
	self.navigationItem.title = friend.name;
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


/*
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
*/
/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}
*/
/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/


#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 5;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
	int sections[] = {1,2,2,1,2};
    return sections[section];
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    static NSString *CellIdentifier2 = @"Cell2";
    
	NSUInteger section = [indexPath indexAtPosition:0];
	NSUInteger row = [indexPath indexAtPosition:1];
	
	UITableViewCell *cell;
	if (section == 0 || section==4) {
		cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
		if (cell == nil) {
			cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
		}
	} else {
		cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier2];
		if (cell == nil) {
			cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:CellIdentifier2] autorelease];
		}		
	}
    
	if (section == 0) {
		cell.textLabel.text = friend.name;
		cell.detailTextLabel.text = friend.name;
	}
	if (section == 1) {
		if (row==0) {
			cell.textLabel.text = @"location";
			cell.detailTextLabel.text = friend.location;
		} else if (row==1) {
			cell.textLabel.text = @"network";
			cell.detailTextLabel.text = friend.network;
		}
	}
	if (section == 2) {
		if (row==0) {
			cell.textLabel.text = @"phone";
			cell.detailTextLabel.text = friend.phone;
		} else if (row==1) {
			cell.textLabel.text = @"email";
			cell.detailTextLabel.text = friend.email;
		}
	}
	if (section == 3) {
		if (row==0) {
			cell.textLabel.text = @"status";
			cell.detailTextLabel.text = friend.latest_status;
		}
	}
	if (section == 4) {
		cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
		if (row==0) {
			cell.textLabel.text = @"View Profile";
		} else if (row==1) {
			cell.textLabel.text = @"Send a Message";
		}
	}
	
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source.
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }   
}
*/


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/


/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here. Create and push another view controller.
    /*
    // ...
    // Pass the selected object to the new view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
    [detailViewController release];
    */
}


#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end

