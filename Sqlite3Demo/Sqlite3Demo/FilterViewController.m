//
//  FilterViewController.m
//  Sqlite3Demo
//
//  Created by Feliu on 16/4/24.
//  Copyright © 2016年 Feliu. All rights reserved.
//

#import "FilterViewController.h"

@interface FilterViewController ()

@end

@implementation FilterViewController

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

- (IBAction)filterByCity:(UIButton *)sender {
    NSString *city = self.cityFilter.text;
    if (_delegate && [_delegate respondsToSelector:@selector(didFilterByCity:)]) {
        [_delegate didFilterByCity:city];
    }
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)filterByCount:(UIButton *)sender {
    NSString *count = self.countFilter.text;
    if (_delegate && [_delegate respondsToSelector:@selector(didFilterByConut:)]) {
        [_delegate didFilterByConut:count];
    }
    [self.navigationController popViewControllerAnimated:YES];
}
@end
