//
//  MapViewController.h
//  ThDisplay
//
//  Created by DandyXu on 14-5-22.
//  Copyright (c) 2014年 DandyXu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapViewController : UIViewController <MKMapViewDelegate>

@property (retain, nonatomic) IBOutlet MKMapView *MapView;

- (IBAction)MapViewToSecond:(id)sender;

@end
