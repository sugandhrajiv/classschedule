//
//  ClassScheduleCell.h
//  ClassSchedule
//
//  Created by Rajiv on 5/14/15.
//  Copyright (c) 2015 Home. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ClassScheduleCell : UITableViewCell

@property (nonatomic, strong) UILabel *venueName;
@property (nonatomic, strong) UILabel *proTip;
@property (nonatomic, strong) UIView *seperatorView1;
@property (nonatomic, strong) UIImageView *startTimeImageView;
@property (nonatomic, strong) UIImageView *classNameImageView;
@property (nonatomic, strong) UIImageView *instructorNameImageView;
@property (nonatomic, strong) UILabel *classStartTime;
@property (nonatomic, strong) UILabel *className;
@property (nonatomic, strong) UILabel *instructorName;

@end
