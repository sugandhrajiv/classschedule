//
//  CSClass.m
//  ClassSchedule
//
//  Created by Rajiv on 5/14/15.
//  Copyright (c) 2015 Home. All rights reserved.
//

#import "CSClass.h"
#import "Mantle.h"

@implementation CSClass

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"activities" : @"activities",
             @"alias" : @"alias",
             @"classDescription" : @"description",
             @"classId" : @"id",
             @"className" : @"name"
             };
}

@end
