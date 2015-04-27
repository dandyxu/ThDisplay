//
//  MainViewController.h
//  ThDisplay
//
//  Created by DandyXu on 14-5-8.
//  Copyright (c) 2014年 DandyXu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginViewController.h"
#import "UserEntity.h"

@interface MainViewController : UIViewController


@property (retain, nonatomic) IBOutlet UILabel *MainWelcomeLabel;

@property(retain,nonatomic)UserEntity *userEntity;

@property (retain, nonatomic) IBOutlet UILabel *WelcomeTopLabel;

- (IBAction)BackToLogin:(id)sender;

@end
