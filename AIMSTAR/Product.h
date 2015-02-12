//
//  Product.h
//  AIMSTAR
//
//  Created by Rnut on 2/12/2558 BE.
//  Copyright (c) 2558 Rnut. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Product : NSObject

@property(nonatomic,strong) NSString *Name;
@property(nonatomic,strong) NSString *ID;
@property(nonatomic,strong) NSString *Prize;
@property(nonatomic,strong) NSString *MP;
@property(nonatomic,strong) NSString *PV;
@property(nonatomic,strong) NSString *Category;
@property(nonatomic,strong) NSString *Detail;
@property(nonatomic,strong) UIImage *Image;

@end
