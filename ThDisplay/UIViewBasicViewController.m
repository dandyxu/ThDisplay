//
//  UIViewBasicViewController.m
//  ThDisplay
//
//  Created by DandyXu on 14-5-8.
//  Copyright (c) 2014年 DandyXu. All rights reserved.
//

#import "UIViewBasicViewController.h"

@interface UIViewBasicViewController ()

@end

@implementation UIViewBasicViewController
@synthesize BasicChangeView;
@synthesize ControlView;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (IBAction)StartBasicChange:(id)sender {
    //设置监听事件的Block语法
    
    self.ControlView.alpha = 1.0;
    
    self.ControlView.transform  = CGAffineTransformScale(self.ControlView.transform, 1, 1);
    
    [UIView animateWithDuration:0.8 animations:^{
        CGRect frame = self.ControlView.frame;
        frame.origin.y = 100;
        self.ControlView.frame = frame;
        
        self.ControlView.alpha = 0.1;
        
        self.ControlView.transform = CGAffineTransformScale(self.ControlView.transform, 0.01, 0.01);
        
    }completion:^(BOOL finished) {
        if (finished) {
            [UIView animateWithDuration:0.8 animations:^{
                CGRect frame = self.ControlView.frame;
                frame.origin.y = 100;
                self.ControlView.frame = frame;
                
                self.ControlView.alpha = 1.0;
                
                self.ControlView.transform = CGAffineTransformIdentity;
                
            }];
        }
    }];
}



- (IBAction)EaseInAction:(id)sender {
    //淡入
    self.ControlView.alpha = 0.0;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationDuration:1];
    [UIView setAnimationDelegate:self];
    self.ControlView.alpha = 1.0;
    [UIView commitAnimations];
}

- (IBAction)EaseOutAction:(id)sender {
    //淡出
    self.ControlView.alpha = 1.0;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationDuration:1];
    [UIView setAnimationDelegate:self];
    self.ControlView.alpha = 0.0;
    [UIView commitAnimations];
}

- (IBAction)DisplaceAction:(id)sender {
    //位移
    //位移传统语法,向下位移100px
    [UIView beginAnimations:@"DisplaceAction" context:nil];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    
    CGRect frame = self.ControlView.frame;
    frame.origin.y = 100;
    self.ControlView.frame = frame;
    
    [UIView commitAnimations];
}

- (IBAction)DisplaceAction_x:(id)sender {
    //位移Block语句
    [UIView animateWithDuration:0.5 animations:^{
    CGRect frame = self.ControlView.frame;
    frame.origin.x = 100;
    self.ControlView.frame = frame;
    }];
}

- (IBAction)ZoomAction:(id)sender {
    //缩放
    self.ControlView.transform  = CGAffineTransformScale(self.ControlView.transform, 1, 1);
    
    [UIView animateWithDuration:0.8 animations:^{
        self.ControlView.transform = CGAffineTransformScale(self.ControlView.transform, 0.01, 0.01);
        
    }completion:^(BOOL finished) {
        if (finished) {
            [UIView animateWithDuration:0.8 animations:^{
                self.ControlView.transform = CGAffineTransformIdentity;
            }];
        }
    }];
}

- (IBAction)RotationAction:(id)sender {
    //旋转
    [UIView beginAnimations:@"Rotation" context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationDuration:1];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(AnimationStop)];
    ControlView.transform = CGAffineTransformMakeRotation(M_PI);
    [UIView commitAnimations];
}

-(void)AnimationStop{
    [UIView beginAnimations:@"Rotation" context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationDuration:1];
    [UIView setAnimationDelegate:self];
    ControlView.transform = CGAffineTransformMakeRotation(0);
    [UIView commitAnimations];
}

- (IBAction)BasicBackToRoot:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
- (void)dealloc {
    [BasicChangeView release];
    [ControlView release];
    [super dealloc];
}
@end
