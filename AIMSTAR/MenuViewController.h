//
//  MenuViewController.h
//  AIMSTAR
//
//  Created by Rnut on 2/11/2558 BE.
//  Copyright (c) 2558 Rnut. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CellMenu.h"
#import "SWRevealViewController/SWRevealViewController.h"
@interface MenuViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray *MenuData;
    BOOL FlagCatagory;
    BOOL FlagServ;
    BOOL FlagLogin;
}
@property(nonatomic,strong)NSMutableArray *MenuData;
@property(nonatomic,strong)IBOutlet UITableView *Tableview;
@end
