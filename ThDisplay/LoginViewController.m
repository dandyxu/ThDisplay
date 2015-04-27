//
//  LoginViewController.m
//  ThDisplay
//
//  Created by DandyXu on 14-5-8.
//  Copyright (c) 2014年 DandyXu. All rights reserved.
//

#import "LoginViewController.h"
#import "MainViewController.h"
#import "UserEntity.h"

@interface LoginViewController ()

@end

@implementation LoginViewController
@synthesize TypeLabel;
@synthesize EnterNameTextField;
@synthesize WelcomeLabel;
@synthesize WelcomeNavi;

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
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"4.JPG"]]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)GotoUserGuide:(id)sender {
    
    //将textField内容传输到UserGuideViewController
    //构建UserEntity对象
    UserEntity *userEntity = [[UserEntity alloc] init];
    userEntity.userName = self.EnterNameTextField.text;
    
    //跳转Mainstoryboard中的MainView.UserGuideViewController
    UIStoryboard *GotoUserGuide = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    MainViewController *MainView = [GotoUserGuide instantiateViewControllerWithIdentifier:@"MainView"];
    
    //设置MainViewController中的值
    MainView.userEntity = userEntity;
    
    [self presentViewController:MainView animated:YES completion:nil];
    
    
}


- (void)dealloc {
    [WelcomeLabel release];
    [TypeLabel release];
    [WelcomeNavi release];
    [EnterNameTextField release];
    [super dealloc];
}

- (IBAction)EnterNameTextEditDone:(id)sender {
    [EnterNameTextField resignFirstResponder];
}

-(IBAction)backgroundTap:(id)sender{
    [EnterNameTextField resignFirstResponder];
}


@end
