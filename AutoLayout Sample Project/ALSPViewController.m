//
//  ALSPViewController.m
//  AutoLayout Sample Project
//
//  Created by Andrew Ialacci on 12/30/13.
//  Copyright (c) 2013 Andrew Ialacci. All rights reserved.
//

#import "ALSPViewController.h"

@interface ALSPViewController ()

@end

@implementation ALSPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor lightGrayColor]];
    
    /*
     
    Show you what happens when a view is placed in another
    but not given an X/Y. When using frames, this doens't happen.
     
    I think you answered this in a tweet mentining that if there
    arent enough constraints, it just picks one which is likely
    incorrect. That makes total sense!
     
     */
    
    // Red Square (Parent)
    UIView *redSquare = [[UIView alloc]initForAutoLayout];
    [self.view addSubview:redSquare];
    
    [redSquare setBackgroundColor:[UIColor redColor]];
    [redSquare setClipsToBounds:NO];
    
    [redSquare autoSetDimensionsToSize:CGSizeMake(500.0, 500.0)];
    [redSquare autoCenterInSuperview];

    // Blue Square (Child View of Red Square)
    UIView *blueSquare = [[UIView alloc]initForAutoLayout];
    [redSquare addSubview:blueSquare];
    
    [blueSquare setBackgroundColor:[UIColor blueColor]];
    
    [blueSquare autoSetDimensionsToSize:CGSizeMake(200.0, 200.0)];
    
    
    
    
    
    
    
    
}

@end
