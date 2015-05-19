//
//  CSClassDetailViewController.h
//  ClassSchedule
//
//  Created by Rajiv on 5/14/15.
//  Copyright (c) 2015 Home. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "CSClassSchedule.h"

@interface CSClassDetailViewController : UIViewController

@property (nonatomic, strong) CSClassSchedule *classSchedule;

@property (nonatomic, strong) UIView *outlineView1;
@property (nonatomic, strong) UIView *outlineView2;
@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UIView *infoView;

// Map View
@property (nonatomic, strong) UIView *mapOutlineView1;
@property (nonatomic, strong) UIView *mapOutlineView2;
@property (nonatomic, strong) MKMapView *mapView;

@property (nonatomic, strong) UILabel *name;
@property (nonatomic, strong) UILabel *website;
@property (nonatomic, strong) UILabel *addressLine1;
@property (nonatomic, strong) UILabel *addressLine2;
@property (nonatomic, strong) UILabel *available;

// Amenities
@property (nonatomic, strong) UIView *amenitiesView;
@property (nonatomic, strong) UIView *amenitiesOutlineView;


@property (nonatomic, strong) UIImageView *suppliesImageView;
@property (nonatomic, strong) UIImageView *foodImageView;
@property (nonatomic, strong) UIImageView *lockersImageView;
@property (nonatomic, strong) UIImageView *matsImageView;
@property (nonatomic, strong) UIImageView *shopsImageView;
@property (nonatomic, strong) UIImageView *showersImageView;
@property (nonatomic, strong) UIImageView *towelsImageView;

@property (nonatomic, strong) UILabel *supplies;
@property (nonatomic, strong) UILabel *food;
@property (nonatomic, strong) UILabel *lockers;
@property (nonatomic, strong) UILabel *mats;
@property (nonatomic, strong) UILabel *shops;
@property (nonatomic, strong) UILabel *showers;
@property (nonatomic, strong) UILabel *towels;

@property (nonatomic, strong) UILabel *classDescription;
@property (nonatomic, strong) UILabel *activities;

@end
