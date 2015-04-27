//
//  MapViewController.m
//  ThDisplay
//
//  Created by DandyXu on 14-5-22.
//  Copyright (c) 2014年 DandyXu. All rights reserved.
//

#import "MapViewController.h"
#import "MapAnnotation.h"

@interface MapViewController ()

@end

@implementation MapViewController

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
	
    //是否显示当前设备的位置
    self.MapView.showsUserLocation = YES;
    self.MapView.delegate = self;
    
    //地图的显示类型
    self.MapView.mapType = MKMapTypeHybrid;
    
    //经纬度坐标，地图初始化时显示的坐标
    CLLocationCoordinate2D coord = {31.5708278,120.22828690000006};
    
    //显示范围，数值越大，范围越大
    MKCoordinateSpan span = {0.01,0.01};
    
    MKCoordinateRegion region = {coord,span};
    //地图初始化显示的区域
    [self.MapView setRegion:region animated:YES];
    
    //创建Annotation对象
    CLLocationCoordinate2D showCoord = {31.5708278,120.22828690000006};
    MapAnnotation *annotation1 = [[MapAnnotation alloc]initWithCoordinate2D:showCoord];
    annotation1.title = @"无锡太湖学院";
    annotation1.subtitle = @"徐文谦";
    
    [self.MapView addAnnotation:annotation1];
    
}

#pragma mark -MKAnnotationView Delegate
- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation{
    static NSString *identifier = @"Annotation";
    MKPinAnnotationView *annotationView = (MKPinAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:identifier];

    if (annotation !=_MapView.userLocation) {
        //MKPinAnnotationView 是大头针视图
        annotationView = [[MKPinAnnotationView alloc]initWithAnnotation:annotation
                                                            reuseIdentifier:identifier];
        //设置是否显示标题视图
        annotationView.canShowCallout = YES;
            
        UIButton *button = [UIButton buttonWithType:(UIButtonTypeDetailDisclosure)];
        [button addTarget:self action:@selector(ButtonAction) forControlEvents:UIControlEventTouchUpInside];
            
        //标题右边视图
        annotationView.rightCalloutAccessoryView = button;
    
    }
    //设置大头针的颜色
    annotationView.pinColor = MKPinAnnotationColorRed;
    
    annotationView.animatesDrop = YES;
    
    return annotationView;
}


-(void)ButtonAction{
    NSLog(@"显示太湖学院详情");
}

- (void)dealloc {
    [_MapView release];
    [super dealloc];
}

- (IBAction)MapViewToSecond:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
@end
