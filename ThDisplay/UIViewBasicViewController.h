//
//  UIViewBasicViewController.h
//  ThDisplay
//
//  Created by DandyXu on 14-5-8.
//  Copyright (c) 2014年 DandyXu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewBasicViewController : UIViewController

@property (retain, nonatomic) IBOutlet UIView *BasicChangeView;

@property (retain, nonatomic) IBOutlet UIView *ControlView;

- (IBAction)StartBasicChange:(id)sender;

- (IBAction)BasicBackToRoot:(id)sender;

- (IBAction)EaseInAction:(id)sender;

- (IBAction)EaseOutAction:(id)sender;

- (IBAction)DisplaceAction:(id)sender;

- (IBAction)DisplaceAction_x:(id)sender;

- (IBAction)ZoomAction:(id)sender;

- (IBAction)RotationAction:(id)sender;
@end
