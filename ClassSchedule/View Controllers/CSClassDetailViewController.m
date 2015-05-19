//
//  CSClassDetailViewController.m
//  ClassSchedule
//
//  Created by Rajiv on 5/14/15.
//  Copyright (c) 2015 Home. All rights reserved.
//

#import "CSClassDetailViewController.h"
#import "CSLocation.h"
#import "CSClassSchedule.h"
#import "CSVenue.h"

@implementation CSClassDetailViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self !=nil){
        
        CGRect screenSize = [[UIScreen mainScreen] bounds];
        
        _scrollView = [[UIScrollView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
        [_scrollView setBackgroundColor:[UIColor whiteColor]];
        
        _scrollView.contentSize = CGSizeMake(_scrollView.frame.size.width, 1100);
        _outlineView1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, screenSize.size.width, 5)];
        _outlineView2 = [[UIView alloc] initWithFrame:CGRectMake(0, 305, screenSize.size.width, 5)];
        
        CAGradientLayer *outline1bg = [self blueGradient];
        outline1bg.frame = _outlineView1.bounds;
        [_outlineView1.layer insertSublayer:outline1bg atIndex:0];
        
        CAGradientLayer *outline2bg = [self blueGradient];
        outline2bg.frame = _outlineView2.bounds;
        [_outlineView2.layer insertSublayer:outline2bg atIndex:0];

        _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 5, screenSize.size.width, 300)];
        
        _infoView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 310, screenSize.size.width, 340)];
        [_infoView setBackgroundColor:[UIColor whiteColor]];
        
        _mapOutlineView1 = [[UIView alloc] initWithFrame:CGRectMake(0, 665, screenSize.size.width, 5)];
        _mapOutlineView2 = [[UIView alloc] initWithFrame:CGRectMake(0, 870, screenSize.size.width, 5)];
        
        CAGradientLayer *mapoutlinebg1 = [self blueGradient];
        mapoutlinebg1.frame = _mapOutlineView1.bounds;
        [_mapOutlineView1.layer insertSublayer:mapoutlinebg1 atIndex:0];
        
        CAGradientLayer *mapoutlinebg2 = [self blueGradient];
        mapoutlinebg2.frame = _mapOutlineView2.bounds;
        [_mapOutlineView2.layer insertSublayer:mapoutlinebg2 atIndex:0];
        
        _mapView = [[MKMapView alloc] initWithFrame:CGRectMake(0, 670, screenSize.size.width, 200)];
        _mapView.zoomEnabled = NO;
        _mapView.scrollEnabled = NO;
        
        _name = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 200, 25)];
        _name.textColor = [UIColor blueColor];
        _name.font = [UIFont boldSystemFontOfSize:20];
        
        _website = [[UILabel alloc] initWithFrame:CGRectMake(20, 40, 300, 20)];
        _website.font = [UIFont systemFontOfSize:14];
        
        _seperatorView1 = [[UIView alloc] initWithFrame:CGRectMake(20, 60, 340, 3)];
        _seperatorView1.backgroundColor = [UIColor grayColor];
        
        _available = [[UILabel alloc] initWithFrame:CGRectMake(260, 20, 100, 20)];
        _available.font = [UIFont boldSystemFontOfSize:18];
        
        _proTip = [[UILabel alloc] initWithFrame:CGRectMake(20, 90, screenSize.size.width-20, 80)];
        _proTip.font = [UIFont systemFontOfSize:16];
        _proTip.numberOfLines = 3;
        
        _addressLine1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 60, 200, 20)];
        _addressLine2 = [[UILabel alloc] initWithFrame:CGRectMake(20, 80, 200, 20)];
        
        _addressLine1.font = [UIFont systemFontOfSize:12];
        _addressLine2.font = [UIFont systemFontOfSize:12];
        
        _seperatorView2 = [[UIView alloc] initWithFrame:CGRectMake(20, 100, 340, 3)];
        _seperatorView2.backgroundColor = [UIColor grayColor];
        
        _amenitiesOutlineView =[[UIView alloc] initWithFrame:CGRectMake(0, 495, screenSize.size.width, 5)];
        
        CAGradientLayer *amenitiesOutlineBg = [self blueGradient];
        amenitiesOutlineBg.frame = _amenitiesOutlineView    .bounds;
        [_amenitiesOutlineView.layer insertSublayer:amenitiesOutlineBg atIndex:0];
        
        _amenitiesView = [[UIView alloc] initWithFrame:CGRectMake(0, 500, screenSize.size.width, 230)];
        
        _suppliesImageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 10, 50, 40)];
        _suppliesImageView.image = [UIImage imageNamed:@"supplies.jpg"];
        
        _foodImageView = [[UIImageView alloc] initWithFrame:CGRectMake(110, 10, 50, 40)];
        _foodImageView.image = [UIImage imageNamed:@"food.jpg"];
        
        _lockersImageView = [[UIImageView alloc] initWithFrame:CGRectMake(200, 10, 50, 40)];
        _lockersImageView.image = [UIImage imageNamed:@"lockers.jpg"];
        
        _matsImageView = [[UIImageView alloc] initWithFrame:CGRectMake(290, 10, 50, 40)];
        _matsImageView.image = [UIImage imageNamed:@"mats.jpg"];
        
        _shopsImageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 80, 50, 40)];
        _shopsImageView.image = [UIImage imageNamed:@"shop2.jpg"];
        
        _showersImageView = [[UIImageView alloc] initWithFrame:CGRectMake(110, 80, 50, 40)];
        _showersImageView.image = [UIImage imageNamed:@"showers2.jpg"];
        
        _towelsImageView = [[UIImageView alloc] initWithFrame:CGRectMake(200, 80, 50, 40)];
        _towelsImageView.image = [UIImage imageNamed:@"towels.jpg"];
        
        _supplies = [[UILabel alloc] initWithFrame:CGRectMake(20, 30, 50, 60)];
        _supplies.font = [UIFont boldSystemFontOfSize:12];
        _supplies.text = @"Supplies";
        
        _food = [[UILabel alloc] initWithFrame:CGRectMake(110, 30, 50, 60)];
        _food.font = [UIFont boldSystemFontOfSize:12];
        _food.text = @"Food";
        _food.textAlignment = NSTextAlignmentCenter;
        
        _lockers = [[UILabel alloc] initWithFrame:CGRectMake(200, 30, 50, 60)];
        _lockers.font = [UIFont boldSystemFontOfSize:12];
        _lockers.text = @"Lockers";
        _lockers.textAlignment = NSTextAlignmentCenter;
        
        _mats = [[UILabel alloc] initWithFrame:CGRectMake(290, 30, 50, 60)];
        _mats.font = [UIFont boldSystemFontOfSize:12];
        _mats.text = @"Mats";
        _mats.textAlignment = NSTextAlignmentCenter;
        
        _shops = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, 50, 60)];
        _shops.font = [UIFont boldSystemFontOfSize:12];
        _shops.text = @"Shop";
        _shops.textAlignment = NSTextAlignmentCenter;
        
        _showers = [[UILabel alloc] initWithFrame:CGRectMake(110, 100, 50, 60)];
        _showers.font = [UIFont boldSystemFontOfSize:12];
        _showers.text = @"Showers";
        _showers.textAlignment = NSTextAlignmentCenter;
        
        _towels = [[UILabel alloc] initWithFrame:CGRectMake(200, 100, 50, 60)];
        _towels.font = [UIFont boldSystemFontOfSize:12];
        _towels.text = @"Towels";
        _towels.textAlignment = NSTextAlignmentCenter;
        
        _classDescription = [[UILabel alloc] initWithFrame:CGRectMake(20, 870, screenSize.size.width-40, 220)];
        _classDescription.numberOfLines = 10;
        _activities = [[UILabel alloc] initWithFrame:CGRectMake(20, 130, screenSize.size.width, 20)];
        
        [_amenitiesView addSubview:_suppliesImageView];
        [_amenitiesView addSubview:_foodImageView];
        [_amenitiesView addSubview:_lockersImageView];
        [_amenitiesView addSubview:_matsImageView];
        [_amenitiesView addSubview:_shopsImageView];
        [_amenitiesView addSubview:_showersImageView];
        [_amenitiesView addSubview:_towelsImageView];
        
        [_amenitiesView addSubview:_supplies];
        [_amenitiesView addSubview:_food];
        [_amenitiesView addSubview:_lockers];
        [_amenitiesView addSubview:_mats];
        [_amenitiesView addSubview:_shops];
        [_amenitiesView addSubview:_showers];
        [_amenitiesView addSubview:_towels];
        
        [_scrollView addSubview:_outlineView1];
        [_scrollView addSubview:_imageView];
        [_scrollView addSubview:_outlineView2];
        
        [_infoView addSubview:_name];
        [_infoView addSubview:_website];
        [_infoView addSubview:_seperatorView1];
        [_infoView addSubview:_seperatorView2];
        [_infoView addSubview:_available];
        [_infoView addSubview:_addressLine1];
        [_infoView addSubview:_addressLine2];
        //[_infoView addSubview:_activities];
        [_infoView addSubview:_proTip];
       
        [_scrollView addSubview:_infoView];
        [_scrollView addSubview:_amenitiesOutlineView];
        [_scrollView addSubview:_amenitiesView];
        [_scrollView addSubview:_mapOutlineView1];
        [_scrollView addSubview:_mapOutlineView2];
        [_scrollView addSubview:_mapView];
        [_scrollView addSubview:_classDescription];
        
        self.view = _scrollView;
    }
    
    return self;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    NSString *imageUrl = [[[self.classSchedule venue] images] defaultImage];
    
    NSURL *url = [NSURL URLWithString:imageUrl];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    
    [NSURLConnection sendAsynchronousRequest:urlRequest queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError){
        UIImage *image = [UIImage imageWithData:data];
        if(image == nil){
            self.imageView.image = [UIImage imageNamed:@"defaultImage.jpg"];
        }
        else{
            self.imageView.image = image;
        }
    }];
    
    self.name.text = [[self.classSchedule csClass] className];
    self.website.text = [[self.classSchedule venue] website];
    
    NSString *availableText = [[self.classSchedule classAvailability] status];
    
    if([availableText isEqual:@"available"]){
        self.available.textColor = [UIColor greenColor];
    }
    else{
        self.available.textColor = [UIColor redColor];
    }
    self.available.text = [NSString stringWithFormat:@"(%@)",availableText];
    
    CSAddress *address = [[self.classSchedule venue] address];
    
    self.addressLine1.text = [address address];
    self.addressLine2.text = [NSString stringWithFormat:@"%@ ,%@, %@",[address city],[address state],[address zipCode]];
    
    self.classDescription.text = [[self.classSchedule csClass] classDescription];
    self.activities.text = [[self.classSchedule csClass] activities];
    self.proTip.text = [[self.classSchedule venue] proTip];
    
    CSLocation *location = [[self.classSchedule venue] location];
    
    CLLocationCoordinate2D center = CLLocationCoordinate2DMake([location latitude], [location longitude]);
    
    BOOL supplies = [[[self.classSchedule venue] amenities] classSupplies];
    if(supplies){
        self.supplies.enabled = YES;
        self.suppliesImageView.highlighted = YES;
    }
    else{
        self.supplies.enabled = NO;
        self.suppliesImageView.highlighted = NO;
    }
    
    BOOL food = [[[self.classSchedule venue] amenities] food];
    
    if(food){
        self.food.enabled = YES;
    }
    else{
        self.food.enabled = NO;
    }
    
    BOOL lockers = [[[self.classSchedule venue] amenities] lockers];
    if(lockers){
        self.lockers.enabled = YES;
    }
    else{
        self.lockers.enabled = NO;
    }
    
    BOOL mats = [[[self.classSchedule venue] amenities] mats];
    if(mats){
        self.mats.enabled = YES;
    }
    else{
        self.mats.enabled = NO;
    }
    
    BOOL shops = [[[self.classSchedule venue] amenities] shop];
    if(shops){
        self.shops.enabled = YES;
    }
    else{
        self.shops.enabled = NO;
    }
    
    BOOL showers = [[[self.classSchedule venue] amenities] showers];
    if(showers){
        self.showers.enabled = YES;
    }
    else{
        self.showers.enabled = NO;
    }
    
    BOOL towels = [[[self.classSchedule venue] amenities] towels];
    if(towels){
        self.towels.enabled = YES;
    }
    else{
        self.towels.enabled = NO;
    }
    
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(center, 800, 800);
    [self.mapView setRegion:region];
    
    MKPointAnnotation *annotation = [[MKPointAnnotation alloc] init];
    [annotation setCoordinate:center];
    [annotation setTitle:[[self.classSchedule csClass] className]];
    NSString *subtitle = [NSString stringWithFormat:@"%@, %@",[[[self.classSchedule venue] address] city],[[[self.classSchedule venue] address] state]];
    [annotation setSubtitle:subtitle];
    [self.mapView addAnnotation:annotation];
}

- (CAGradientLayer*) blueGradient {
    
    UIColor *colorOne = [UIColor colorWithRed:(120/255.0) green:(135/255.0) blue:(150/255.0) alpha:1.0];
    UIColor *colorTwo = [UIColor colorWithRed:(57/255.0)  green:(79/255.0)  blue:(96/255.0)  alpha:1.0];
    UIColor *colorThree = [UIColor colorWithRed:(32/255.0) green:(46/255.0) blue:(60/255.0) alpha:1.0];
    
    NSArray *colors = [NSArray arrayWithObjects:(id)colorOne.CGColor, colorTwo.CGColor, colorThree.CGColor, nil];
    NSNumber *stopOne = [NSNumber numberWithFloat:0.0];
    NSNumber *stopTwo = [NSNumber numberWithFloat:0.5];
    NSNumber *stopThree = [NSNumber numberWithFloat:1.0];
    
    NSArray *locations = [NSArray arrayWithObjects:stopOne, stopTwo, stopThree, nil];
    
    CAGradientLayer *headerLayer = [CAGradientLayer layer];
    headerLayer.colors = colors;
    headerLayer.locations = locations;
    
    return headerLayer;
    
}


@end
