//
//  XBSplitDataSource.m
//  SplitDataSource
//
//  Created by jelly on 2017/12/5.
//  Copyright © 2017年 jelly. All rights reserved.
//

#import "XBSplitDataSource.h"

@interface XBSplitDataSource()

@property (nonatomic, strong)NSArray *items;
@property (nonatomic, copy)NSString *cellIdentifier;

@end
@implementation XBSplitDataSource

#pragma mark - UITableViewDataSource

//
-(instancetype)init{
    return nil;
}

//用这个方法初始胡
- (id)initWithItems:(NSArray *)items
     cellIdentifier:(NSString *)cellIdentifier
    configCellBlock:(TableViewCellConfigureBlock)configCellBlock{
    
    self = [super init];
    if (self) {
        self.items = items;
        self.cellIdentifier = cellIdentifier;
        self.configCellBlock = [configCellBlock copy];
    }
    
    return self;
}

#pragma mark - uitableview dataSource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return  self.items.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier forIndexPath:indexPath];
    id item = [self itemIndexPath:indexPath];
    self.configCellBlock(cell, item);
    
    return cell;
}

- (id)itemIndexPath:(NSIndexPath *)indexPath{
    return self.items[indexPath.row];
}

@end
