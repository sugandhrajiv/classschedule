//
//  CSLocation.h
//  ClassSchedule
//
//  Created by Rajiv on 5/14/15.
//  Copyright (c) 2015 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mantle.h"

@interface CSLocation : MTLModel <MTLJSONSerializing>

@property (nonatomic, assign) float latitude;
@property (nonatomic, assign) float longitude;

@end
