//
//  CSLocation.m
//  ClassSchedule
//
//  Created by Rajiv on 5/14/15.
//  Copyright (c) 2015 Home. All rights reserved.
//

#import "CSLocation.h"

@implementation CSLocation

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"latitude" : @"lat",
             @"longitude" : @"lon"
             };
}

@end
