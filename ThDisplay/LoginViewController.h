//
//  LoginViewController.h
//  ThDisplay
//
//  Created by DandyXu on 14-5-8.
//  Copyright (c) 2014年 DandyXu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserEntity.h"
#import "MainViewController.h"

@interface LoginViewController : UIViewController


- (IBAction)GotoUserGuide:(id)sender;

@property (retain, nonatomic) IBOutlet UILabel *WelcomeLabel;
@property (retain, nonatomic) IBOutlet UILabel *TypeLabel;
@property (retain, nonatomic) IBOutlet UINavigationBar *WelcomeNavi;

@property (retain, nonatomic) IBOutlet UITextField *EnterNameTextField;

- (IBAction)EnterNameTextEditDone:(id)sender;

-(IBAction)backgroundTap:(id)sender;

@end
