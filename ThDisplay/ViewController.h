//
//  ViewController.h
//  ThDisplay
//
//  Created by DandyXu on 14-3-25.
//  Copyright (c) 2014年 DandyXu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iCarousel.h"

@interface  ViewController : UIViewController <iCarouselDataSource,iCarouselDelegate,UIActionSheetDelegate>


@property (nonatomic, retain) IBOutlet iCarousel *carousel;
@property (nonatomic, retain) IBOutlet UINavigationItem *navItem;

- (IBAction)switchCarouselType;

- (IBAction)BackToSecond:(id)sender;

@end
