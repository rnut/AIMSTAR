//
//  MenuViewController.m
//  AIMSTAR
//
//  Created by Rnut on 2/11/2558 BE.
//  Copyright (c) 2558 Rnut. All rights reserved.
//

#import "MenuViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController
@synthesize MenuData;
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setMenu];
    [self.Tableview setDataSource:self];
    [self.Tableview setDelegate:self];
    FlagLogin = NO;
    FlagCatagory = NO;
    FlagServ = NO;
    

    [self.Tableview reloadData];
}


-(void)setMenu{
    MenuData = [[NSMutableArray alloc] init];
    if (FlagLogin) {
        [MenuData addObject:@"กลุ่มผลิตภัณฑ์"];
        [MenuData addObject:@"ประวัติการซื้อ"];
        [MenuData addObject:@"นโยบายการให้บริการ"];
        [MenuData addObject:@"ออกจากระบบ"];
    }
    else{
        [MenuData addObject:@"กลุ่มผลิตภัณฑ์"];
        [MenuData addObject:@"นโยบายการให้บริการ"];
        [MenuData addObject:@"เข้าสู่ระบบ"];
    }

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark tableview
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [MenuData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *simpleTableIdentifier = @"MenuCell";
    
    CellMenu *cell = (CellMenu *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[CellMenu alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];

    }
    cell.Head.text = [MenuData objectAtIndex:indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self drilldownMenuWithIndexPath:indexPath];
    [self pushBySegueWithIndexPath:indexPath];

}


-(void)pushBySegueWithIndexPath:(NSIndexPath *)indexPath{
    if ([[MenuData objectAtIndex:indexPath.row] isEqualToString:@"กลุ่มผลิตภัณฑ์"]) {
        [self performSegueWithIdentifier:@"categoryLine" sender:nil];
    }
    else if ([[MenuData objectAtIndex:indexPath.row] isEqualToString:@"นโยบายการให้บริการ"]) {
        [self performSegueWithIdentifier:@"servLine" sender:nil];
    }
    else if ([[MenuData objectAtIndex:indexPath.row] isEqualToString:@"เข้าสู่ระบบ"]) {
        [self performSegueWithIdentifier:@"loginLine" sender:nil];
    }
    
    
    
}
#pragma mark drill down menu
-(void)drilldownMenuWithIndexPath:(NSIndexPath *)indexPath{
    if ([[MenuData objectAtIndex:indexPath.row] isEqualToString:@"กลุ่มผลิตภัณฑ์"]) {
        
        if (FlagCatagory == NO) {
            [MenuData insertObject:@"Category" atIndex:indexPath.row+1];
            [MenuData insertObject:@"Best Seller" atIndex:indexPath.row+1];
            
            NSArray *insertIndexPaths = [NSArray arrayWithObjects:
                                         [NSIndexPath indexPathForRow:indexPath.row+1 inSection:0],
                                         [NSIndexPath indexPathForRow:indexPath.row+2  inSection:0],nil];
            [self.Tableview beginUpdates];
            [self.Tableview insertRowsAtIndexPaths:insertIndexPaths withRowAnimation:UITableViewRowAnimationFade];
            [self.Tableview endUpdates];
            FlagCatagory = YES;
        }
        else{
            [MenuData removeObjectAtIndex:indexPath.row+1];
            [MenuData removeObjectAtIndex:indexPath.row+1];
            NSArray *deleteIndexPaths = [NSArray arrayWithObjects:
                                         [NSIndexPath indexPathForRow:indexPath.row+1 inSection:0],
                                         [NSIndexPath indexPathForRow:indexPath.row+2  inSection:0],nil];
            [self.Tableview beginUpdates];
            [self.Tableview deleteRowsAtIndexPaths:deleteIndexPaths withRowAnimation:UITableViewRowAnimationFade];
            [self.Tableview endUpdates];
            FlagCatagory = NO;
        }
        
        
        
    }
    if ([[MenuData objectAtIndex:indexPath.row] isEqualToString:@"นโยบายการให้บริการ"]) {
        if (FlagServ == NO) {
            FlagServ = YES;
            [MenuData insertObject:@"นโยบายความเป็นส่วนตัว" atIndex:indexPath.row+1 ];
            [MenuData insertObject:@"การรับประกันความพึงพอใจ" atIndex:indexPath.row+1 ];
            [MenuData insertObject:@"นโยบายการชำระค่าสินค้า" atIndex:indexPath.row+1 ];
            [MenuData insertObject:@"เงื่อนไขการให้บริการ" atIndex:indexPath.row+1 ];
            
            NSArray *insertIndexPaths = [NSArray arrayWithObjects:
                                         [NSIndexPath indexPathForRow:indexPath.row+1 inSection:0],
                                         [NSIndexPath indexPathForRow:indexPath.row+2  inSection:0],
                                         [NSIndexPath indexPathForRow:indexPath.row+3  inSection:0],
                                         [NSIndexPath indexPathForRow:indexPath.row+4  inSection:0],nil];
            [self.Tableview beginUpdates];
            [self.Tableview insertRowsAtIndexPaths:insertIndexPaths withRowAnimation:UITableViewRowAnimationFade];
            [self.Tableview endUpdates];
        }
        else{
            [MenuData removeObjectAtIndex:indexPath.row+1];
            [MenuData removeObjectAtIndex:indexPath.row+1];
            [MenuData removeObjectAtIndex:indexPath.row+1];
            [MenuData removeObjectAtIndex:indexPath.row+1];
            
            
            
            NSArray *deleteIndexPaths = [NSArray arrayWithObjects:
                                         [NSIndexPath indexPathForRow:indexPath.row+1 inSection:0],
                                         [NSIndexPath indexPathForRow:indexPath.row+2  inSection:0],
                                         [NSIndexPath indexPathForRow:indexPath.row+3  inSection:0],
                                         [NSIndexPath indexPathForRow:indexPath.row+4  inSection:0],nil];
            [self.Tableview beginUpdates];
            [self.Tableview deleteRowsAtIndexPaths:deleteIndexPaths withRowAnimation:UITableViewRowAnimationFade];
            [self.Tableview endUpdates];
            FlagServ = NO;
        }
        
    }

}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"loginLine"])
    {
        NSLog(@"loginLine");
    }
}


@end
