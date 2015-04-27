//
//  SecondViewController.m
//  ThDisplay
//
//  Created by DandyXu on 14-5-9.
//  Copyright (c) 2014年 DandyXu. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

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
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"7.JPG"]]];
}

- (IBAction)GoToPicStory:(id)sender {
    UIStoryboard *PicStory = [UIStoryboard storyboardWithName:@"PicStoryboard" bundle:nil];
    ViewController *pic = [PicStory instantiateViewControllerWithIdentifier:@"PicStoryboard"];
    [self presentViewController:pic animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)BackToMain:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
@end
