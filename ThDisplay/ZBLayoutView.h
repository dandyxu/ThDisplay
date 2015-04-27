//
//  ZBLayoutView.h
//  ThDisplay
//
//  Created by DandyXu on 14-5-9.
//  Copyright (c) 2014年 DandyXu. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "ZBLayoutLayer.h"

@interface ZBLayoutView : UIView 
{
	NSMutableArray *layers;
	UITouch *currentTouch;
	NSTimer *rotateTimer;
	NSUInteger rotateIndex;

	CGFloat radius;
	BOOL animationFlag;
}

@property (retain, nonatomic) UITouch *currentTouch;

@end
