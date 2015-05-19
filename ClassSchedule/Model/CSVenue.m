//
//  CSVenue.m
//  ClassSchedule
//
//  Created by Rajiv on 5/14/15.
//  Copyright (c) 2015 Home. All rights reserved.
//

#import "CSVenue.h"
#import "CSAddress.h"
#import "CSAmenities.h"
#import "CSImages.h"
#import "CSLocation.h"

@implementation CSVenue

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"activities" : @"activities",
             @"address" : @"address",
             @"alias" : @"alias",
             @"amenities" : @"amenities",
             @"bookingWindow" : @"booking_window",
             @"venueDescription" : @"description",
             @"facebookURL" : @"facebook_page_url",
             @"venueId" : @"id",
             @"images" : @"images",
             @"location" : @"location",
             @"lockers" : @"lockers",
             @"className" : @"name",
             @"proTip" : @"pro_tip",
             @"showers" : @"showers",
             @"subtitle" : @"subtitle",
             @"timezone" : @"tz",
             @"website" : @"website"
             };
}

+ (NSValueTransformer *)addressJSONTransformer {
    return [MTLJSONAdapter dictionaryTransformerWithModelClass:CSAddress.class];
}

+ (NSValueTransformer *)amenitiesJSONTransformer {
    return [MTLJSONAdapter dictionaryTransformerWithModelClass:CSAmenities.class];
}

+ (NSValueTransformer *)imagesJSONTransformer {
    return [MTLJSONAdapter dictionaryTransformerWithModelClass:CSImages.class];
}

+ (NSValueTransformer *)locationJSONTransformer {
    return [MTLJSONAdapter dictionaryTransformerWithModelClass:CSLocation.class];
}

@end
