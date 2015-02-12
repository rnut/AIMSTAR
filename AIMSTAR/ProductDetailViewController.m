//
//  ProductDetailViewController.m
//  AIMSTAR
//
//  Created by Rnut on 2/12/2558 BE.
//  Copyright (c) 2558 Rnut. All rights reserved.
//

#import "ProductDetailViewController.h"

@interface ProductDetailViewController ()

@end

@implementation ProductDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)addToCart:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] init];
    [alert setDelegate:self];
    [alert setAlertViewStyle:UIAlertViewStylePlainTextInput];
    [alert setTitle:@"ยืนยันการเลือกสินค้า"];
    [alert setCancelButtonIndex:0];
    [alert setMessage:@"Product ID : Product Name......\n กรุณากรอกจำนวนที่ต้องการสั่งซื้อ"];
    [alert addButtonWithTitle:@"ยกเลิก"];
    [alert addButtonWithTitle:@"เพิ่ม"];
//    [[UIAlertView alloc] initWithTitle: message:@"Product ID : Product Name......" delegate:self cancelButtonTitle:@"ยกเลิก" otherButtonTitles:@"เพิ่ม", nil];
    [alert show];
}

#pragma mark alertview
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if ([alertView.title isEqualToString:@"ยืนยันการเลือกสินค้า"]) {
        if (buttonIndex == 1) {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"เพิ่มลงตะกร้า" message:@"Product ID : Product Name......\n จำนวน : xx ชิ้น" delegate:self cancelButtonTitle:@"ตกลง" otherButtonTitles:nil];
            [alert show];
        }
    }
    if ([alertView.title isEqualToString:@"เพิ่มลงตะกร้า"]) {
        if (buttonIndex == 0) {
            self.CartBtn.titleLabel.text = @"xx ชิ้น";
        }
    }
    
    
}
@end
