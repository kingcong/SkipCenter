//
//  CWListViewController.m
//  SkipCenter
//
//  Created by kingcong on 16/6/5.
//  Copyright © 2016年 王聪. All rights reserved.
//

#import "CWListViewController.h"
#import "SkipCenterTool.h"

@interface CWListViewController ()

@property (nonatomic, strong) NSArray *dataArray;

@end

@implementation CWListViewController

- (NSArray *)dataArray
{
    if (_dataArray == nil) {
        _dataArray = @[
                       @{@"customtitle":@"第四页",@"action":@"CWFourViewController",@"color":[UIColor redColor]},
                       @{@"customtitle":@"第一页",@"action":@"CWFirstViewController",@"color":[UIColor greenColor]},
                       @{@"customtitle":@"第二页",@"action":@"CWSecondViewController",@"color":[UIColor grayColor]},
                       @{@"customtitle":@"第三页",@"action":@"CWThirdViewController",@"color":[UIColor lightGrayColor]},
                       @{@"customtitle":@"第四页",@"action":@"CWFourViewController",@"color":[UIColor purpleColor]}
                       ];
    }
    return _dataArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    self.tableView.tableFooterView = [[UIView alloc] init];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.dataArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = self.dataArray[indexPath.row][@"customtitle"];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *vcName = self.dataArray[indexPath.row][@"action"];
    [SkipCenterTool runtimePush:vcName dic:self.dataArray[indexPath.row] nav:self.navigationController];
}

@end
