//
//  Purchasing.h
//  AIMSTAR
//
//  Created by Rnut on 2/12/2558 BE.
//  Copyright (c) 2558 Rnut. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"
@interface Purchasing : NSObject
@property(nonatomic,strong)NSString *Time;
@property(nonatomic,strong)NSString *ID;
@property(nonatomic,strong)NSString *TransportType;
@property(nonatomic,strong)NSString *Address;
@property(nonatomic,strong)NSString *PurchaseType;
@property(nonatomic,assign)NSInteger *TotalPV;
@property(nonatomic,assign)NSInteger *TotalPrize;
@property(nonatomic,assign)NSInteger *TransportCost;
@property(nonatomic,strong)NSArray *OrderArray;
@end
