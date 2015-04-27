//
//  LabelMoveViewController.m
//  ThDisplay
//
//  Created by DandyXu on 14-5-9.
//  Copyright (c) 2014年 DandyXu. All rights reserved.
//

#import "LabelMoveViewController.h"

@interface LabelMoveViewController()

@end

@implementation LabelMoveViewController

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
	UITapGestureRecognizer *tapgr = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap:)];
	[self.view addGestureRecognizer:tapgr];
	[tapgr release];

}

- (void)moveLabel:(UILabel *)label toPoint:(CGPoint)p
{
	UIViewAnimationOptions options = UIViewAnimationOptionBeginFromCurrentState|UIViewAnimationOptionAllowUserInteraction;
	[UIView animateWithDuration:2.0 delay:0.0 options:options animations:^{
		label.center = p;
	} completion:nil];
	
	[UIView animateWithDuration:1.0 delay:0 options:options animations:^{
		label.transform = CGAffineTransformRotate(CGAffineTransformIdentity, M_PI);
	} completion:^(BOOL finished) {
		[UIView animateWithDuration:1.0 delay:0 options:options animations:^{
			label.transform = CGAffineTransformIdentity;//CGAffineTransformRotate(CGAffineTransformIdentity, 2*M_PI);
		} completion:nil];
	}];
}

- (void)tap:(UITapGestureRecognizer *)gesture
{
	[self moveLabel:self.LabelMove toPoint:[gesture locationInView:self.view]];
}

-(void)viewDidUnload{
    self.LabelMove = nil;
}

- (void)dealloc {
    [_LabelMove release];
    [super dealloc];
}
- (IBAction)BackToSecond:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
@end
