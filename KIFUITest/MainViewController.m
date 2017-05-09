//
//  MainViewController.m
//  KIFUITest
//
//  Created by Lix on 2017/5/9.
//  Copyright © 2017年 Lix. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *dataSource;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initializeData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)initializeData {
    self.dataSource = [NSMutableArray array];
    for (int i = 0; i < 10; i++) {
        [self.dataSource addObject:[NSString stringWithFormat:@"%d", i]];
    }
}

#pragma mark - tableView delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = self.dataSource[indexPath.row];
    return cell;
}

@end
