//
//  UITransitionViewController.m
//  ThDisplay
//
//  Created by DandyXu on 14-5-8.
//  Copyright (c) 2014年 DandyXu. All rights reserved.
//

#import "UITransitionViewController.h"

@interface UITransitionViewController ()

@end

@implementation UITransitionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (IBAction)StartUITransition:(id)sender {
    //Block语法
    UIViewAnimationOptions options = UIViewAnimationOptionTransitionCurlUp;
    [UIView transitionWithView:_ControlView duration:0.5 options:options animations:^{
        [_ControlView exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
    }completion:NULL];
    
}

- (IBAction)BackToRoot:(id)sender {

    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (IBAction)TransitionCross:(id)sender {
    UIViewAnimationOptions options = UIViewAnimationOptionTransitionCrossDissolve;
    [UIView transitionWithView:_ControlView duration:0.5 options:options animations:^{
        [_ControlView exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
    }completion:NULL];
}

- (IBAction)CurveLinear:(id)sender {
    UIViewAnimationOptions options = UIViewAnimationOptionCurveLinear;
    [UIView transitionWithView:_ControlView duration:0.5 options:options animations:^{
        [_ControlView exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
    }completion:NULL];
}

- (IBAction)FlipFromLeft:(id)sender {
    //传统动画语法
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:_ControlView cache:YES];
    [_ControlView exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
    [UIView commitAnimations];
}

- (void)dealloc {
    [_ControlView release];
    [_parentView release];
    [super dealloc];
}

@end
