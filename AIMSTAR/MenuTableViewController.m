//
//  MenuTableViewController.m
//  AIMSTAR
//
//  Created by Rnut on 2/10/2558 BE.
//  Copyright (c) 2558 Rnut. All rights reserved.
//

#import "MenuTableViewController.h"


#define Login NO

@interface MenuTableViewController ()
{
    NSMutableArray *MenuData;
}
@end

@implementation MenuTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MenuData = [[NSMutableArray alloc] init];
    if (Login== YES) {
        [MenuData addObject:@"กลุ่มผลิตภัณฑ์"];
//        [MenuData addObject:@"Best Seller"];
//        [MenuData addObject:@"Category"];
        [MenuData addObject:@"ประวัติการซื้อ"];
        [MenuData addObject:@"นโยบายการให้บริการ"];
//        [MenuData addObject:@"เงื่อนไขการให้บริการ"];
//        [MenuData addObject:@"นโยบายความเป็นส่วนตัว"];
//        [MenuData addObject:@"การรับประกันความพึงพอใจ"];
//        [MenuData addObject:@"นโยบายการชำระค่าสินค้า"];
        [MenuData addObject:@"ออกจากระบบ"];
    }
    else{
        [MenuData addObject:@"กลุ่มผลิตภัณฑ์"];
        [MenuData addObject:@"เงื่อนไขการให้บริการ"];
        [MenuData addObject:@"เข้าสู่ระบบ"];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [MenuData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
//    switch ( indexPath.row )
//    {
//        case 0:
//            CellIdentifier = @"catagory";
//            break;
//            
//        case 1:
//            CellIdentifier = @"service policy";
//            break;
//            
//        case 2:
//            CellIdentifier = @"login";
//            break;
//        
//    }
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: CellIdentifier forIndexPath: indexPath];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [MenuData objectAtIndex:indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if ([[MenuData objectAtIndex:indexPath.row] isEqualToString:@"กลุ่มผลิตภัณฑ์"]) {
        NSArray *insertIndexPaths = [NSArray arrayWithObjects:
                                    [NSIndexPath indexPathForRow:1 inSection:0],
                                    [NSIndexPath indexPathForRow:2  inSection:0],
                                    nil];
        [MenuData insertObject:@"Category" atIndex:1];
        [MenuData insertObject:@"Best Seller" atIndex:2];
        [self.tableView beginUpdates];
        [self.tableView insertRowsAtIndexPaths:insertIndexPaths withRowAnimation:UITableViewRowAnimationFade];
        [self.tableView endUpdates];
    }
    
    
    if ([[MenuData objectAtIndex:indexPath.row] isEqualToString:@"เงื่อนไขการให้บริการ"]) {
        
        [MenuData addObject:@"เงื่อนไขการให้บริการ"];
        [MenuData addObject:@"นโยบายความเป็นส่วนตัว"];
        [MenuData addObject:@"การรับประกันความพึงพอใจ"];
        [MenuData addObject:@"นโยบายการชำระค่าสินค้า"];
        NSArray *insertIndexPaths = [NSArray arrayWithObjects:
                                     [NSIndexPath indexPathForRow:1 inSection:0],
                                     [NSIndexPath indexPathForRow:2  inSection:0],
                                     nil];
        [self.tableView beginUpdates];
        [self.tableView insertRowsAtIndexPaths:insertIndexPaths withRowAnimation:UITableViewRowAnimationFade];
        [self.tableView endUpdates];
    }
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
