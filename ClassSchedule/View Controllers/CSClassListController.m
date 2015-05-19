//
//  ClassListController.m
//  ClassSchedule
//
//  Created by Rajiv on 5/6/15.
//  Copyright (c) 2015 Home. All rights reserved.
//

#import "CSClassListController.h"
#import "ClassScheduleCell.h"
#import "CSClassDetailViewController.h"
#import "CSClassSchedule.h"

@interface CSClassListController ()

@end

@implementation CSClassListController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [self.tableView registerClass:[ClassScheduleCell class] forCellReuseIdentifier:@"ClassScheduleCell"];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.classSchedules count];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 150.0f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *myCellIdentifier = @"ClassScheduleCell";
    ClassScheduleCell *cell = [tableView dequeueReusableCellWithIdentifier:myCellIdentifier];
    
    if (cell == nil) {
        cell = [[ClassScheduleCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:myCellIdentifier];
    }
        
    CSClassSchedule *classSchedule = [self.classSchedules objectAtIndex:indexPath.row];
    
    NSDate *startDate = [NSDate dateWithTimeIntervalSince1970:[classSchedule startTime]];
    cell.venueName.text = [[classSchedule venue] className];
    cell.proTip.text = [[classSchedule venue] proTip];
    cell.classStartTime.text= [NSDateFormatter localizedStringFromDate:startDate dateStyle:NSDateFormatterShortStyle timeStyle:NSDateFormatterLongStyle];
    cell.classStartTime.textAlignment = NSTextAlignmentCenter;
    cell.className.text = [[classSchedule csClass] className];
    cell.className.textAlignment = NSTextAlignmentCenter;
    NSString *instructorName = [classSchedule teacherName];
    if(instructorName == nil){
        cell.instructorName.text = @"TBD";
    }
    else{
        cell.instructorName.text = [classSchedule teacherName];
    }
    cell.instructorName.textAlignment = NSTextAlignmentCenter;
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here, for example:
    // Create the next view controller.
    CSClassDetailViewController *detailViewController = [[CSClassDetailViewController alloc] initWithNibName:nil bundle:nil];
    
    // Pass the selected object to the new view controller.
    detailViewController.classSchedule = [self.classSchedules objectAtIndex:indexPath.row];
    
    // Push the view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
