//
//  TableViewCell.m
//  SplitDataSource
//
//  Created by jelly on 2017/12/6.
//  Copyright © 2017年 jelly. All rights reserved.
//

#import "TableViewCell.h"

@interface TableViewCell()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)configCellWithItem:(id)item
{
    self.nameLabel.text = item;
}

@end
