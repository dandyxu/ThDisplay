//
//  HGMLViewController.h
//  ThDisplay
//
//  Created by DandyXu on 14-5-9.
//  Copyright (c) 2014年 DandyXu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HGMLViewController : UIViewController

- (IBAction)ChangeView:(id)sender;
- (IBAction)ModalChange:(id)sender;

@property (retain, nonatomic) IBOutlet UIView *ControlView;

@property (retain, nonatomic) IBOutlet UIView *parentView;

- (IBAction)BackToRoot2:(id)sender;


@end
