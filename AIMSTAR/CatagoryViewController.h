//
//  CatagoryViewController.h
//  AIMSTAR
//
//  Created by Rnut on 2/10/2558 BE.
//  Copyright (c) 2558 Rnut. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SWRevealViewController/SWRevealViewController.h"

@interface CatagoryViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate>
{
    NSMutableArray *ProductArray;
    NSMutableArray *ProductArray2;
    IBOutlet UICollectionView *ProductCollection;
    IBOutlet UICollectionView *ProductCollection2;
}
@property (nonatomic) IBOutlet UIBarButtonItem* revealButtonItem;
@property(nonatomic,strong)NSMutableArray *ProductArray;
@property(nonatomic,strong)NSMutableArray *ProductArray2;
@end
