//
//  MapAnnotation.m
//  ThDisplay
//
//  Created by DandyXu on 14-5-22.
//  Copyright (c) 2014年 DandyXu. All rights reserved.
//

#import "MapAnnotation.h"

@implementation MapAnnotation

-(id)initWithCoordinate2D:(CLLocationCoordinate2D) coordinate{
    self = [super init];
    
    if (self!= nil) {
        _coordinate = coordinate;
    }
    return self;
}

@end
