//
//  ProductDetailViewController.h
//  AIMSTAR
//
//  Created by Rnut on 2/12/2558 BE.
//  Copyright (c) 2558 Rnut. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductDetailViewController : UIViewController<UIAlertViewDelegate>
- (IBAction)addToCart:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *CartBtn;

@end
