//
//  LanguageSettingViewController.m
//  AIMSTAR
//
//  Created by Rnut on 2/12/2558 BE.
//  Copyright (c) 2558 Rnut. All rights reserved.
//

#import "LanguageSettingViewController.h"

@interface LanguageSettingViewController ()

@end

@implementation LanguageSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.TableView setDelegate:self];
    [self.TableView setDataSource:self];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"Cell";
    
        switch ( indexPath.row )
        {
            case 0:
                CellIdentifier = @"English";
                break;
    
            case 1:
                CellIdentifier = @"ไทย";
                break;
    
            case 2:
                CellIdentifier = @"login";
                break;
    
        }
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: CellIdentifier forIndexPath: indexPath];
    return cell;
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
