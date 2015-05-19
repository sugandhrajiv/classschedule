//
//  ClassScheduleCell.m
//  ClassSchedule
//
//  Created by Rajiv on 5/14/15.
//  Copyright (c) 2015 Home. All rights reserved.
//

#import "ClassScheduleCell.h"

@implementation ClassScheduleCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if(self != nil){
        _venueName = [[UILabel alloc] init];
        _proTip = [[UILabel alloc] init];
        _seperatorView1 = [[UIView alloc] init];
        _classStartTime = [[UILabel alloc] init];
        _className = [[UILabel alloc] init];
        _instructorName = [[UILabel alloc] init];
        
        _venueName.frame = CGRectMake(20, -30, 300, 100);
        _proTip.frame = CGRectMake(20, -55, 350, 200);
        _seperatorView1.frame = CGRectMake(10, 30, 350, 1);
        
        _classNameImageView = [[UIImageView alloc] initWithFrame:CGRectMake(40, 60, 60, 60)];
        _classNameImageView.image = [UIImage imageNamed:@"classname.jpg"];
        
        _startTimeImageView = [[UIImageView alloc] initWithFrame:CGRectMake(160, 60, 60, 60)];
        _startTimeImageView.image = [UIImage imageNamed:@"time.jpg"];
        
        _instructorNameImageView = [[UIImageView alloc] initWithFrame:CGRectMake(270, 60, 60, 60)];
        _instructorNameImageView.image = [UIImage imageNamed:@"teacher.jpg"];
        
        _className.frame = CGRectMake(20, 80, 100, 100);
        _classStartTime.frame = CGRectMake(140, 80, 100, 100);
        _instructorName.frame = CGRectMake(250, 80, 100, 100);
        
        _venueName.font = [UIFont boldSystemFontOfSize:16];
        _proTip.font = [UIFont systemFontOfSize:12];
        
        _seperatorView1.backgroundColor = [UIColor grayColor];
        
        [self addSubview:_venueName];
        [self addSubview:_proTip];
        [self addSubview:_seperatorView1];

        [self addSubview:_classNameImageView];
        [self addSubview:_startTimeImageView];
        [self addSubview:_instructorNameImageView];
        
        [self addSubview:_className];
        [self addSubview:_classStartTime];
        [self addSubview:_instructorName];
    }
    
    return self;
}

@end
