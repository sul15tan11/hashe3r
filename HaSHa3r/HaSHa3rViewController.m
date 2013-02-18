//
//  HaSHa3rViewController.m
//  HaSHa3r
//
//  Created by Sultan Alanazi on 2/16/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "HaSHa3rViewController.h"

@implementation HaSHa3rViewController
//@synthesize sssss;


-(id)init
{
    self = [super init];
    if(self)
    {
        
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [Tweets count];
}



-(UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
 
    HashTweets *selectedHash = [Tweets objectAtIndex:indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"rrr"];
    if(cell == nil)
    {
        
       
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"rrr"] autorelease];

    }
    
    cell.textLabel.text = selectedHash.tweetText;
    cell.imageView.image = selectedHash.tweetImage;
    cell.detailTextLabel.text = selectedHash.tweeterName;
  //  cell.detailTextLabel.text = @"dd";
    return cell;
}


#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    HashTweets *hash1 = [[HashTweets alloc]initWithtext:@" nj   jnorld" andName:@"Sultan" andImage:[UIImage imageNamed:@"test.png"] andTime:@"2006"];
    HashTweets *hash2 = [[HashTweets alloc]initWithtext:@"Saudi Arabia " andName:@"Sultan" andImage:[UIImage imageNamed:@"test.png"] andTime:@"2010"];
    HashTweets *hash3 = [[HashTweets alloc]initWithtext:@"UK           " andName:@"Danny" andImage:[UIImage imageNamed:@"test.png"] andTime:@"2010"];
    
    Tweets = [[NSMutableArray alloc]initWithObjects:hash1,hash2,hash3, nil] ;
    

    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [self setSssss:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    //[sssss release];
    [super dealloc];
}
@end
