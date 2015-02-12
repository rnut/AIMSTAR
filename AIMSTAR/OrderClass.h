//
//  OrderClass.h
//  AIMSTAR
//
//  Created by Rnut on 2/12/2558 BE.
//  Copyright (c) 2558 Rnut. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"
@interface OrderClass : NSObject

@property(nonatomic,strong)NSString *PurchaseID;
@property(nonatomic,strong)Product *PuschaseProduct;
@property(nonatomic,assign)NSInteger *Quantity;
@property(nonatomic,assign)NSInteger *TotalPV;
@property(nonatomic,assign)NSInteger *TotalPrize;
@end
