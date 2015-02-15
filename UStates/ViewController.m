//
//  ViewController.m
//  UStates
//
//  Created by Alex French on 2/14/15.
//  Copyright (c) 2015 french.chagrin. All rights reserved.
//
//  Sources Consulted:
//     https://www.youtube.com/watch?v=Mv30rkczGqQ
#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //Filling array of state names upon loading
    self.states = @[@"Alabama", @"Alaska", @"Arizona", @"Arkanas", @"California",
                    @"Colorado", @"Connecticut", @"Delaware", @"Florida", @"Georgia",
                    @"Hawaii", @"Idaho", @"Illinois", @"Indiana", @"Iowa",
                    @"Kansas", @"Kentucky", @"Louisiana", @"Maine", @"Maryland",
                    @"Massachusetts", @"Michigan", @"Minnesota", @"Mississippi", @"Missouri",
                    @"Montana", @"Nebraska", @"Nevada", @"New Hampshire", @"New Jersey",
                    @"New Mexico", @"New York", @"North Carolina", @"North Dakota", @"Ohio",
                    @"Oklahoma", @"Oregon", @"Pennsylvania", @"Rhode Island", @"South Carolina",
                    @"South Dakota", @"Tennessee", @"Texas", @"Utah", @"Vermont",
                    @"Virginia", @"Washington", @"West Virginia", @"Wisconsin", @"Wyoming"];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //Determining number of cells needed to display all data(?)
    return [self.states count];
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Don't quite understand identifier bit.
    //Difference between SimpleIdentifier and SimpleTableIdentifier?
    NSString *SimpleIdentifier = @"simpleIdentifier";
    
    //Reduces overhead by dequeueing stored information on cells when they're offscreen.
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: SimpleIdentifier];
    
    //Allocates memory for cells?
    if (cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimpleIdentifier];
    }
    
    //Fills cells with array of state names corresponding to the same row number.
    cell.textLabel.text = self.states[indexPath.row];
    
    return cell;
}

//When clicking the cell in the table view, it calls this method with the sender (cell)'s details

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"transferDetail"]){
        //IndexPath generally means [___]
        //NSIndexPath *indexPath = [self.indexPathForSelectedRow];
        //SecondViewController *destViewController = segue.destinationViewController.stateName.text;
        
        ((SecondViewController*)segue.destinationViewController).stateName = ((UITableViewCell*)sender).textLabel.text;
        //segue.destinationViewController.stateName.text = ((UITableViewCell*)sender).textLabel.text;
        
        //destViewController.title = self.states[indexPath.row];
    }
}

@end