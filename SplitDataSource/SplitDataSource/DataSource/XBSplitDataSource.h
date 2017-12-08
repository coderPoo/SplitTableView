//
//  XBSplitDataSource.h
//  SplitDataSource
//
//  Created by jelly on 2017/12/5.
//  Copyright © 2017年 jelly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void(^TableViewCellConfigureBlock)(id cell, id item);

@interface XBSplitDataSource : NSObject<UITableViewDataSource>

@property (nonatomic, copy)TableViewCellConfigureBlock configCellBlock;

- (id)initWithItems:(NSArray *)items
     cellIdentifier:(NSString *)cellIdentifier
    configCellBlock:(TableViewCellConfigureBlock)configCellBlock;
@end
