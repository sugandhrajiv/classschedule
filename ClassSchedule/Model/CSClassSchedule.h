//
//  CSClassSchedule.h
//  ClassSchedule
//
//  Created by Rajiv on 5/14/15.
//  Copyright (c) 2015 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mantle.h"
#import "CSClassAvailability.h"
#import "CSClass.h"
#import "CSVenue.h"


@interface CSClassSchedule : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong) CSClassAvailability *classAvailability;
@property (nonatomic, strong) CSClass *csClass;
@property (nonatomic, assign) long endTime;
@property (nonatomic, assign) long scheduleId;
@property (nonatomic, assign) double startTime;
@property (nonatomic, strong) NSString *teacherName;
@property (nonatomic, strong) CSVenue *venue;

@end
