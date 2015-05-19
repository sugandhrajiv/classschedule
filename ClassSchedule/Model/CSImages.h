//
//  CSImages.h
//  ClassSchedule
//
//  Created by Rajiv on 5/14/15.
//  Copyright (c) 2015 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mantle.h"

@interface CSImages : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong) NSString *defaultImage;
@property (nonatomic, strong) NSDictionary *mobileImages;

@end
