//
//  OrderHistoryViewController.m
//  AIMSTAR
//
//  Created by Rnut on 2/12/2558 BE.
//  Copyright (c) 2558 Rnut. All rights reserved.
//

#import "OrderHistoryViewController.h"
#import "CellOrderHistoryViewCell.h"
@interface OrderHistoryViewController ()

@end

@implementation OrderHistoryViewController
@synthesize OrderArray;
- (void)viewDidLoad {
    [super viewDidLoad];
    OrderArray = [[NSMutableArray alloc] init];
    [OrderArray addObject:@"xxx"];
    [OrderArray addObject:@"xxx"];
    [OrderArray addObject:@"xxx"];
    
    [self.Tableview setDataSource:self];
    [self.Tableview setDelegate:self];
    
}





#pragma mark tableview
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [OrderArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *simpleTableIdentifier = @"OrderCell";
    
    CellOrderHistoryViewCell *cell = (CellOrderHistoryViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[CellOrderHistoryViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        
    }
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//    [self drilldownMenuWithIndexPath:indexPath];
//    [self pushBySegueWithIndexPath:indexPath];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
