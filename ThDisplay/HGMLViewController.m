//
//  HGMLViewController.m
//  ThDisplay
//
//  Created by DandyXu on 14-5-9.
//  Copyright (c) 2014年 DandyXu. All rights reserved.
//

#import "HGMLViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "Switch3DTransition.h"
#import "HMGLTransitionManager.h"
#import "RotateTransition.h"
#import "DoorsTransition.h"
#import "ModalViewController.h"

@interface HGMLViewController ()

@end

@implementation HGMLViewController

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
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ChangeView:(id)sender {
    //创建动画类型
    DoorsTransition *switchTr = [[DoorsTransition alloc] init];
    
    //设置动画类型对象
    [[HMGLTransitionManager sharedTransitionManager] setTransition:switchTr];
    
    //设置动画作用视图
    [[HMGLTransitionManager sharedTransitionManager] beginTransition:self.ControlView];
    
    //视图切换
    [self.ControlView exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
    
    [[HMGLTransitionManager sharedTransitionManager] commitTransition];
    
}

- (IBAction)ModalChange:(id)sender {
    DoorsTransition *animation = [[DoorsTransition alloc]init];
    [[HMGLTransitionManager sharedTransitionManager] setTransition:animation];
    
    
    UIStoryboard *storb = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    ModalViewController *viewCtrl = [storb instantiateViewControllerWithIdentifier:@"ModalViewController"];
    
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:viewCtrl];
    
    [[HMGLTransitionManager sharedTransitionManager] presentModalViewController:nav onViewController:self];
    
    //NSLog(@"%@",self.title);

}
- (void)dealloc {
    [_ControlView release];
    [_parentView release];
    [super dealloc];
}
- (IBAction)BackToRoot2:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
}
@end
