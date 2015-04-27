//
//  UserGuideViewController.m
//  ThDisplay
//
//  Created by DandyXu on 14-5-8.
//  Copyright (c) 2014年 DandyXu. All rights reserved.
//

#import "UserGuideViewController.h"
#import "LoginViewController.h"

@interface UserGuideViewController ()

@end

@implementation UserGuideViewController

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
	self.view.backgroundColor = [UIColor clearColor];
    
    //加在新用户指导页面
    [self initGuide];
    
}

-(void)initGuide{
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320, 640)];
    scrollView.contentSize = CGSizeMake(1280, 0);
    
    //视图分页显示
    scrollView.pagingEnabled = YES;
    
    //关闭弹跳效果,避免把根视图露出来
    scrollView.bounces = NO;
    
    UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    [imageview setImage:[UIImage imageNamed:@"5.png"]];
    [scrollView addSubview:imageview];
    [imageview release];
    
    
    UIImageView *imageview1 = [[UIImageView alloc] initWithFrame:CGRectMake(320, 0, 320, 480)];
    [imageview1 setImage:[UIImage imageNamed:@"6.png"]];
    [scrollView addSubview:imageview1];
    [imageview1 release];
    
    
    UIImageView *imageview2 = [[UIImageView alloc] initWithFrame:CGRectMake(640, 0, 320, 480)];
    [imageview2 setImage:[UIImage imageNamed:@"7.png"]];
    [scrollView addSubview:imageview2];
    [imageview2 release];
    
    UIImageView *imageview3 = [[UIImageView alloc] initWithFrame:CGRectMake(960, 0, 320, 480)];
    [imageview3 setImage:[UIImage imageNamed:@"8.png"]];
    //打开imageview3的用户交互;否则下面的button无法响应 
    imageview3.userInteractionEnabled = YES;
    [scrollView addSubview:imageview3];
    [imageview3 release];
    
    //在imageview3上加载一个button
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:nil forState:UIControlStateNormal];
    [button setFrame:CGRectMake(110, 370, 100, 100)];
    [button addTarget:self action:@selector(firstpressed) forControlEvents:UIControlEventTouchUpInside];
    
    //为button按钮添加image背景图片
    [button setBackgroundImage:[UIImage imageNamed:@"Icon.png"] forState:UIControlStateNormal];
  
    [imageview3 addSubview:button];
    
    [self.view addSubview:scrollView];
    [scrollView release];
    
}

- (void)firstpressed{
    LoginViewController *login = [[LoginViewController alloc] initWithNibName:@"LoginViewController" bundle:nil];
    [self presentViewController:login animated:YES completion:nil];
}


@end
