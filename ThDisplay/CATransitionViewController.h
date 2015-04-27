//
//  CATransitionViewController.h
//  ThDisplay
//
//  Created by DandyXu on 14-5-8.
//  Copyright (c) 2014年 DandyXu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CATransitionViewController : UIViewController


@property (retain, nonatomic) IBOutlet UIView *parentViewCA;
@property (retain, nonatomic) IBOutlet UIView *ControlViewCA;

- (IBAction)CATransitionButon:(id)sender;

- (IBAction)CATransitionToRoot:(id)sender;

- (IBAction)CATransitionFade:(id)sender;

- (IBAction)CATransitionPush:(id)sender;

- (IBAction)CATransitionReveal:(id)sender;
@end
