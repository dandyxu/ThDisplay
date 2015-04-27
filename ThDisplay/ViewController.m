//
//  ViewController.m
//  ThDisplay
//
//  Created by DandyXu on 14-3-25.
//  Copyright (c) 2014年 DandyXu. All rights reserved.
//

#import "ViewController.h"
#import "iCarousel.h"

#define ITEM_SPACING 200

@interface ViewController ()

@end

@implementation ViewController

@synthesize carousel;
@synthesize navItem;

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if ((self = [super initWithCoder:aDecoder]))
    {
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //设置carousel的delegate
    carousel.delegate = self;
    
    //设置carousel的datasource
    carousel.dataSource = self;
    
    //初始化carousel的展示类型为coverflow
    carousel.type = iCarouselTypeCoverFlow;      navItem.title = @"图片效果展示";

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    
    self.carousel = nil;
    self.navItem = nil;
}

- (IBAction)switchCarouselType
{
    UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:@"选择类型" delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:@"直线", @"圆圈", @"反向圆圈", @"圆桶", @"反向圆桶", @"封面展示", @"封面展示2", @"纸牌", nil];
    [sheet showInView:self.view];
    [sheet release];
}

- (IBAction)BackToSecond:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    for (UIView *view in carousel.visibleItemViews)
    {
        view.alpha = 1.0;
    }
    
    [UIView beginAnimations:nil context:nil];
    carousel.type = buttonIndex;                //carousel的类型和button的index匹配
    [UIView commitAnimations];
    
    //把actionsheet的button的title传给navitem的title
    navItem.title = [actionSheet buttonTitleAtIndex:buttonIndex];
}

- (NSUInteger)numberOfItemsInCarousel:(iCarousel *)carousel
{
    return 30;
}

//创建一个view
- (UIView *)carousel:(iCarousel *)carousel viewForItemAtIndex:(NSUInteger)index
{
    UIView *view = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",index]]] autorelease];
    view.frame = CGRectMake(70, 80, 180, 260);
    return view;
}

- (NSUInteger)numberOfPlaceholdersInCarousel:(iCarousel *)carousel
{
	return 0;
}


- (NSUInteger)numberOfVisibleItemsInCarousel:(iCarousel *)carousel
{
    return 30;
}

- (CGFloat)carouselItemWidth:(iCarousel *)carousel
{
    return ITEM_SPACING;
}

- (CATransform3D)carousel:(iCarousel *)_carousel transformForItemView:(UIView *)view withOffset:(CGFloat)offset
{
    view.alpha = 1.0 - fminf(fmaxf(offset, 0.0), 1.0);
    CATransform3D transform = CATransform3DIdentity;
    transform.m34 = self.carousel.perspective;
    transform = CATransform3DRotate(transform, M_PI / 8.0, 0, 1.0, 0);
    return CATransform3DTranslate(transform, 0.0, 0.0, offset * carousel.itemWidth);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [carousel release];
    [navItem release];
    [super dealloc];
}



@end

























