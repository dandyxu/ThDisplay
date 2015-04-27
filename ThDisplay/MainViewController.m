//
//  MainViewController.m
//  ThDisplay
//
//  Created by DandyXu on 14-5-8.
//  Copyright (c) 2014年 DandyXu. All rights reserved.
//

#import "MainViewController.h"
#import "ViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController
@synthesize MainWelcomeLabel;
@synthesize userEntity;
@synthesize WelcomeTopLabel;

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
    //设置View背景图片
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"3.JPG"]]];
    
	//接收来自LoginViewController的值
    self.MainWelcomeLabel.text = self.userEntity.userName;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)dealloc {
    [MainWelcomeLabel release];
    [userEntity release];
    [WelcomeTopLabel release];
    [super dealloc];
}
- (IBAction)BackToLogin:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
@end
