//
//  ZBLayoutViewController.m
//  ThDisplay
//
//  Created by DandyXu on 14-5-9.
//  Copyright (c) 2014年 DandyXu. All rights reserved.
//

#import "ZBLayoutViewController.h"

@implementation ZBLayoutViewController

- (id)init
{
	self = [super init];
	if (self != nil) {
	}
	return self;
}

- (void)loadView 
{
	ZBLayoutView *aView = [[ZBLayoutView alloc] initWithFrame:[UIScreen mainScreen].bounds];
	aView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
	self.view = [aView autorelease];
}

- (IBAction)BackToSecond:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
