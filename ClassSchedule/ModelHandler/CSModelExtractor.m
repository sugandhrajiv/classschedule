//
//  ModelExtractor.m
//  ClassSchedule
//
//  Created by Rajiv on 5/14/15.
//  Copyright (c) 2015 Home. All rights reserved.
//

#import "CSModelExtractor.h"
#import "CSClassSchedule.h"

@implementation CSModelExtractor

+(NSArray*)getModelFromFile{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"class_schedule" ofType:@"json"];
    NSError *error;
    NSString *jsonString = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:&error];

    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:&error];
    //NSArray *schedules = [array objectAtIndex:1];
    NSArray *array = [dict objectForKey:@"schedules"];
   
    NSMutableArray *result = [NSMutableArray arrayWithCapacity:20];
    
    [array enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop){
        NSError *error;
        CSClassSchedule *schedule = [MTLJSONAdapter modelOfClass:[CSClassSchedule class] fromJSONDictionary:obj error:&error];
        [result addObject:schedule];
    }];
    
    return result;
}

@end
