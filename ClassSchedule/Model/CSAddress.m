//
//  CSAddress.m
//  ClassSchedule
//
//  Created by Rajiv on 5/14/15.
//  Copyright (c) 2015 Home. All rights reserved.
//

#import "CSAddress.h"

@implementation CSAddress

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"address" : @"address_line1",
             @"city" : @"city",
             @"state" : @"state",
             @"zipCode" : @"zip_code"
             };
}

@end
