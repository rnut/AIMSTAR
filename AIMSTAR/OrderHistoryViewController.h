//
//  OrderHistoryViewController.h
//  AIMSTAR
//
//  Created by Rnut on 2/12/2558 BE.
//  Copyright (c) 2558 Rnut. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OrderHistoryViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)NSMutableArray *OrderArray;
@property (strong, nonatomic) IBOutlet UITableView *Tableview;

@end
