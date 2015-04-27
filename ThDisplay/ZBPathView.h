//
//  ZBPathView.h
//  ThDisplay
//
//  Created by DandyXu on 14-5-9.
//  Copyright (c) 2014年 DandyXu. All rights reserved.
//
#import <QuartzCore/QuartzCore.h>
#import "ZBLayoutLayer.h"

@interface ZBPathView : UIView 
{
	ZBLayoutLayer *spot;
    CGMutablePathRef path;
}

@end
