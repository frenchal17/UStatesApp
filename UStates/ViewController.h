//
//  ViewController.h
//  UStates
//
//  Created by Alex French on 2/14/15.
//  Copyright (c) 2015 french.chagrin. All rights reserved.
//

#import <UIKit/UIKit.h>
                                            //Giving implementation file access to TableView(?)
@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

//Creating Array for state names
@property (copy, nonatomic) NSArray *states;
@property (copy, nonatomic) NSArray *capitals;

@end

