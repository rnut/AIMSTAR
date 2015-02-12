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

@property(nonatomic,strong)NSString *Time;
@property(nonatomic,strong)NSString *ID;
@property(nonatomic,strong)NSString *Transport;
@property(nonatomic,strong)NSString *Address;
@property(nonatomic,strong)NSString *Type;
@property(nonatomic,assign)NSInteger *Num;
@property(nonatomic,strong)Product *OrderProduct;
@end
