//
//  CellOrderHistoryViewCell.h
//  AIMSTAR
//
//  Created by Rnut on 2/12/2558 BE.
//  Copyright (c) 2558 Rnut. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CellOrderHistoryViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *Number;
@property (strong, nonatomic) IBOutlet UILabel *OrderNum;
@property (strong, nonatomic) IBOutlet UILabel *NameProduct;
@property (strong, nonatomic) IBOutlet UILabel *TimeProduct;
@property (strong, nonatomic) IBOutlet UILabel *Prize;
@property (strong, nonatomic) IBOutlet UILabel *Status;
@property (strong, nonatomic) IBOutlet UILabel *Type;

@end
