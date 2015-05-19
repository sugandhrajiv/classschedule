//
//  CSAmenities.m
//  ClassSchedule
//
//  Created by Rajiv on 5/14/15.
//  Copyright (c) 2015 Home. All rights reserved.
//

#import "CSAmenities.h"

@implementation CSAmenities

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"classSupplies" : @"class_supplies",
             @"food" : @"food",
             @"lockers" : @"lockers",
             @"mats" : @"mats",
             @"shop" : @"shop",
             @"showers" : @"showers",
             @"towels" : @"towels"
             };
}

@end
