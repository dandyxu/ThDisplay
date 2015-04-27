//
//  UITransitionViewController.h
//  ThDisplay
//
//  Created by DandyXu on 14-5-8.
//  Copyright (c) 2014年 DandyXu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITransitionViewController : UIViewController

@property (retain, nonatomic) IBOutlet UIView *ControlView;

@property (retain, nonatomic) IBOutlet UIView *parentView;

- (IBAction)StartUITransition:(id)sender;

- (IBAction)BackToRoot:(id)sender;

- (IBAction)TransitionCross:(id)sender;
- (IBAction)CurveLinear:(id)sender;
- (IBAction)FlipFromLeft:(id)sender;
@end
