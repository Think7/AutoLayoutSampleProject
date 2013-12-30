//
//  ALSPScrollView.m
//  AutoLayout Sample Project
//
//  Created by Andrew Ialacci on 12/30/13.
//  Copyright (c) 2013 Andrew Ialacci. All rights reserved.
//

#import "ALSPScrollView.h"

@interface ALSPScrollView ()

@end

@implementation ALSPScrollView

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self.view setBackgroundColor:[UIColor lightGrayColor]];
    
    // Scroll view background is red, content view is green. Right now
    // the content view is covering all of the scroll view.
    //
    // What i'm trying to do is have a scroll view with the content
    // view inside. I would then like to use autoLayout to position
    // ui elements on the content view itself.
    //
    // I think i'm almost there but the scrollView doesn't scroll verticly
    // even though the contentView larger than what the scrollView can display.
    
    UIScrollView *scrollView = [[UIScrollView alloc]initForAutoLayout];
    [self.view addSubview:scrollView];
    [scrollView setBackgroundColor:[UIColor redColor]];
    [scrollView autoPinEdgesToSuperviewEdgesWithInsets:UIEdgeInsetsMake(50, 50, 50, 50)];
    
    CGSize scrollViewSize = [scrollView systemLayoutSizeFittingSize:UILayoutFittingExpandedSize];
    
    NSLog(@"scrollView W = %f \n", scrollViewSize.width);
    NSLog(@"scrollView H = %f \n", scrollViewSize.height);

    // Content View
    CGRect contentViewFrame = CGRectMake(0.0,   // X
                                         0.0,   // Y
                                         scrollViewSize.width,   // width
                                         9999);  // height
    
    UIView *contentView = [[UIView alloc]initWithFrame:contentViewFrame];
    [scrollView addSubview:contentView];
    [contentView setBackgroundColor:[UIColor greenColor]];
    
    // Orange Square
    UIView *testOrangeSquare = [[UIView alloc]initForAutoLayout];
    [contentView addSubview:testOrangeSquare];
    [testOrangeSquare setBackgroundColor:[UIColor orangeColor]];
    [testOrangeSquare autoSetDimensionsToSize:CGSizeMake(100.0, 100.0)];
    [testOrangeSquare autoPinEdge:ALEdgeTop toEdge:ALEdgeTop ofView:contentView withOffset:10.0];
    [testOrangeSquare autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeft ofView:contentView withOffset:10.0];
    
    
    
    
}

@end
