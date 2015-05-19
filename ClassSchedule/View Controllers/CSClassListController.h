//
//  ClassListController.h
//  ClassSchedule
//
//  Created by Rajiv on 5/6/15.
//  Copyright (c) 2015 Home. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CSNavigationController.h"

@interface CSClassListController : UITableViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) CSNavigationController *navigationController;
@property (nonatomic, strong) NSArray *classSchedules;

@end
