//
//  CSClassAvailability.h
//  ClassSchedule
//
//  Created by Rajiv on 5/14/15.
//  Copyright (c) 2015 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mantle.h"

@interface CSClassAvailability : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong) NSString *status;

@end
