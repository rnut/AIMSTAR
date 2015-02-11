//
//  CatagoryViewController.m
//  AIMSTAR
//
//  Created by Rnut on 2/10/2558 BE.
//  Copyright (c) 2558 Rnut. All rights reserved.
//

#import "CatagoryViewController.h"

@interface CatagoryViewController ()

@end

@implementation CatagoryViewController
@synthesize ProductArray,ProductArray2;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self customSetup];

    //1
    [ProductCollection setDataSource:self];
    [ProductCollection setDelegate:self];
    [ProductCollection setScrollEnabled:YES];
    ((UICollectionViewFlowLayout *)ProductCollection.collectionViewLayout).minimumLineSpacing = 2.0f;
    ((UICollectionViewFlowLayout *)ProductCollection.collectionViewLayout).scrollDirection = UICollectionViewScrollDirectionHorizontal;
    [ProductCollection setFrame:self.view.frame];
    [ProductCollection setBounds:self.view.bounds];
    
    ProductArray = [[NSMutableArray alloc] init];
    [ProductArray addObject:@"product1"];
    [ProductArray addObject:@"product2"];
    [ProductArray addObject:@"product3"];
    [ProductArray addObject:@"product4"];
    [ProductArray addObject:@"product5"];
    [ProductArray addObject:@"product6"];
    [ProductArray addObject:@"product7"];
    
    //2
    [ProductCollection2 setDataSource:self];
    [ProductCollection2 setDelegate:self];
    [ProductCollection2 setScrollEnabled:YES];
    ((UICollectionViewFlowLayout *)ProductCollection2.collectionViewLayout).minimumLineSpacing = 2.0f;
    ((UICollectionViewFlowLayout *)ProductCollection2.collectionViewLayout).scrollDirection = UICollectionViewScrollDirectionHorizontal;
    [ProductCollection2 setFrame:self.view.frame];
    [ProductCollection2 setBounds:self.view.bounds];
    
    ProductArray2 = [[NSMutableArray alloc] init];
    [ProductArray2 addObject:@"product1"];
    [ProductArray2 addObject:@"product2"];
    [ProductArray2 addObject:@"product3"];
    [ProductArray2 addObject:@"product4"];
    [ProductArray2 addObject:@"product5"];
}
- (void)customSetup
{
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.revealButtonItem setTarget: revealViewController];
        [self.revealButtonItem setAction: @selector( revealToggle: )];
        [topImg setUserInteractionEnabled:YES];
        [topImg addGestureRecognizer:revealViewController.panGestureRecognizer];
//        [self.navigationController.navigationBar addGestureRecognizer:revealViewController.panGestureRecognizer];
    }
    
    //    _label.text = _text;
    //    _label.textColor = _color;
}

#pragma mark collectionview
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    if (collectionView == ProductCollection)return [ProductArray count];
    else return [ProductArray2 count];
        
    
    
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{

    if (collectionView == ProductCollection){
        static NSString *identifier = @"Cell";
        UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
        UIImageView *productIMG = (UIImageView *)[cell viewWithTag:100];
        UILabel *lbl = (UILabel*)[cell viewWithTag:101];
        
        lbl.text = [ProductArray objectAtIndex:indexPath.row];
        productIMG.image = [UIImage imageNamed:@"product.jpg"];
        return cell;
    }
    else{
        static NSString *identifier = @"Cell";
        UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
        UIImageView *productIMG = (UIImageView *)[cell viewWithTag:99];
        productIMG.image = [UIImage imageNamed:@"product.jpg"];
        return cell;
    }
    
    
    
    return nil;
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
