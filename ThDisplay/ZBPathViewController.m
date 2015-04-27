//
//  ZBPathViewController.m
//  ThDisplay
//
//  Created by DandyXu on 14-5-9.
//  Copyright (c) 2014年 DandyXu. All rights reserved.
//

#import "ZBPathViewController.h"

@implementation ZBPathViewController

- (id)init
{
    self = [super init];
    if (self) {
    }
    return self;
}
- (void)loadView 
{
	ZBPathView *pathView = [[ZBPathView alloc] initWithFrame:[UIScreen mainScreen].bounds];
	pathView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
	self.view = [pathView autorelease];
}

- (IBAction)BackToSecond:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
@end
