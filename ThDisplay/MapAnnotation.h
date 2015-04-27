//
//  MapAnnotation.h
//  ThDisplay
//
//  Created by DandyXu on 14-5-22.
//  Copyright (c) 2014年 DandyXu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MapAnnotation : NSObject <MKAnnotation>

@property (nonatomic, assign) CLLocationCoordinate2D coordinate;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *subtitle;

-(id)initWithCoordinate2D:(CLLocationCoordinate2D) coordinate;

@end
