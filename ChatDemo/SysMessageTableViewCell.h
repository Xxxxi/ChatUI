//
//  SysMessageTableViewCell.h
//  HYSpO2-User
//
//  Created by jiangfan on 2017/6/12.
//  Copyright © 2017年 anfeek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MessageModel.h"

@interface SysMessageTableViewCell : UITableViewCell

@property (nonatomic, strong) MessageModel *model;


- (CGFloat)cellHeight;


@end
