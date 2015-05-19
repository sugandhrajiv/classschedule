//
//  CSVenue.h
//  ClassSchedule
//
//  Created by Rajiv on 5/14/15.
//  Copyright (c) 2015 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mantle.h"
#import "CSAddress.h"
#import "CSAmenities.h"
#import "CSImages.h"
#import "CSLocation.h"

@interface CSVenue : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong) NSString *activities;
@property (nonatomic, strong) CSAddress *address;
@property (nonatomic, strong) NSString *alias;
@property (nonatomic, strong) CSAmenities *amenities;
@property (nonatomic, strong) NSString *bookingWindow;
@property (nonatomic, strong) NSString *venueDescription;
@property (nonatomic, strong) NSString *facebookURL;
@property (nonatomic, assign) int venueId;
@property (nonatomic, strong) CSImages *images;
@property (nonatomic, strong) CSLocation *location;
@property (nonatomic, assign) BOOL lockers;
@property (nonatomic, strong) NSString *className;
@property (nonatomic, strong) NSString *proTip;
@property (nonatomic, assign) BOOL showers;
@property (nonatomic, assign) NSString *subtitle;
@property (nonatomic, strong) NSString *timezone;
@property (nonatomic, strong) NSString *website;

@end
