//
//  TableViewController.m
//  SplitDataSource
//
//  Created by jelly on 2017/12/6.
//  Copyright © 2017年 jelly. All rights reserved.
//

#import "TableViewController.h"

//api
#import "XBSplitDataSource.h"
//cell
#import "TableViewCell.h"

@interface TableViewController ()

@property (nonatomic, strong)XBSplitDataSource *splitDS;
@property (nonatomic, strong)NSArray *items;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setTablView];
}

- (void)setTablView
{
    TableViewCellConfigureBlock cellBlock = ^(TableViewCell *cell,NSString *str){
        [cell configCellWithItem:str];
    };
    self.items = @[@"瘦身",@"再瘦身"];
    
    //注册cell 这个位置可以再封装一层
    [self.tableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:@"cell"];
    self.splitDS = [[XBSplitDataSource alloc] initWithItems:@[@"瘦身",@"再瘦身"] cellIdentifier:@"cell" configCellBlock:cellBlock];
    //设置数据源 为 splitDS
    self.tableView.dataSource = self.splitDS;

    self.tableView.estimatedRowHeight = 50;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UItableView delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%@",self.items[indexPath.row]);
}


@end
