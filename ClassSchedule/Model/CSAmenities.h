//
//  CSAmenities.h
//  ClassSchedule
//
//  Created by Rajiv on 5/14/15.
//  Copyright (c) 2015 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mantle.h"

@interface CSAmenities : MTLModel <MTLJSONSerializing>

@property (nonatomic, assign) BOOL classSupplies;
@property (nonatomic, assign) BOOL food;
@property (nonatomic, assign) BOOL lockers;
@property (nonatomic, assign) BOOL mats;
@property (nonatomic, assign) BOOL shop;
@property (nonatomic, assign) BOOL showers;
@property (nonatomic, assign) BOOL towels;

@end
