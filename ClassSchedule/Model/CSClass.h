//
//  CSClass.h
//  ClassSchedule
//
//  Created by Rajiv on 5/14/15.
//  Copyright (c) 2015 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mantle.h"

@interface CSClass : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong) NSString *activities;
@property (nonatomic, strong) NSString *alias;
@property (nonatomic, strong) NSString *classDescription;
@property (nonatomic, assign) int classId;
@property (nonatomic, strong) NSString *className;

@end
