//
//  BIGViewController.m
//  Mimic
//
//  Created by Kyle on 4/15/14.
//  Copyright (c) 2014 Big Chicken. All rights reserved.
//

#import "BIGViewController.h"

@interface BIGViewController ()

@end

@implementation BIGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.words = [[NSArray alloc] initWithObjects:
                  @"Really Original...",
                  @"You are so Creative...",
                  @"Seriously?",
                  @"Kinda Pathetic",
                  @"This is Embarrasing",
                  @"These Aren't Even Funny", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonTry:(id)sender {
    
    int random = arc4random_uniform(self.words.count);
    self.labelMimic.text = [self.words objectAtIndex:random];
}

@end
