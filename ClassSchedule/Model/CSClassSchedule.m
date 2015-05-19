//
//  CSClassSchedule.m
//  ClassSchedule
//
//  Created by Rajiv on 5/14/15.
//  Copyright (c) 2015 Home. All rights reserved.
//

#import "CSClassSchedule.h"
#import "CSClassAvailability.h"
#import "CSClass.h"
#import "CSVenue.h"

@implementation CSClassSchedule

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"classAvailability" : @"availability",
             @"csClass" : @"class",
             @"endTime" : @"endtime",
             @"scheduleId" : @"id",
             @"startTime" : @"starttime",
             @"teacherName" : @"teacher_name",
             @"venue" : @"venue"
             };
}

+ (NSValueTransformer *)classAvailabilityJSONTransformer {
    return [MTLJSONAdapter dictionaryTransformerWithModelClass:CSClassAvailability.class];
}

+ (NSValueTransformer *)csClassJSONTransformer {
    return [MTLJSONAdapter dictionaryTransformerWithModelClass:CSClass.class];
}

+ (NSValueTransformer *)venueJSONTransformer {
    return [MTLJSONAdapter dictionaryTransformerWithModelClass:CSVenue.class];
}

@end
