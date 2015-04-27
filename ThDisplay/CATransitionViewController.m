//
//  CATransitionViewController.m
//  ThDisplay
//
//  Created by DandyXu on 14-5-8.
//  Copyright (c) 2014年 DandyXu. All rights reserved.
//

#import "CATransitionViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface CATransitionViewController ()

@end

@implementation CATransitionViewController

@synthesize ControlViewCA;
@synthesize parentViewCA;


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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [parentViewCA release];
    [ControlViewCA release];
    [super dealloc];
}
- (IBAction)CATransitionButon:(id)sender {
    CATransition  *animation = [CATransition animation];
    animation.delegate = self;
    animation.duration = 0.5;
    animation.timingFunction = UIViewAnimationCurveEaseInOut;
    
    //Type of Animations
    animation.type = kCATransitionMoveIn;
    
    //animation.type = @"oglFlip";
    //animation.type = @"pageCurl";
    
    
    //SubType
    //animation.subtype = kCATransitionFromRight;
    
    [self.ControlViewCA.layer addAnimation:animation forKey:@"animation"];
    
    [ControlViewCA exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
    
}

- (IBAction)CATransitionToRoot:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)CATransitionFade:(id)sender {
    CATransition  *animation = [CATransition animation];
    animation.delegate = self;
    animation.duration = 0.5;
    animation.timingFunction = UIViewAnimationCurveEaseInOut;
    
    //Type of Animations
    animation.type = kCATransitionFade;
    
    [self.ControlViewCA.layer addAnimation:animation forKey:@"animation"];
    
    [ControlViewCA exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
}

- (IBAction)CATransitionPush:(id)sender {
    CATransition  *animation = [CATransition animation];
    animation.delegate = self;
    animation.duration = 0.5;
    animation.timingFunction = UIViewAnimationCurveEaseInOut;
    
    //Type of Animations
    animation.type = kCATransitionPush;
    
    animation.subtype = kCATransitionFromBottom;
    
    [self.ControlViewCA.layer addAnimation:animation forKey:@"animation"];
    
    [ControlViewCA exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
    
}

- (IBAction)CATransitionReveal:(id)sender {
    CATransition  *animation = [CATransition animation];
    animation.delegate = self;
    animation.duration = 0.5;
    animation.timingFunction = UIViewAnimationCurveEaseInOut;
    
    //Type of Animations
    animation.type = kCATransitionReveal;
    
    animation.subtype = kCATransitionFromRight;
    
    [self.ControlViewCA.layer addAnimation:animation forKey:@"animation"];
    
    [ControlViewCA exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
    
}
@end
