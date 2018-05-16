//
//  MessageRightTableViewCell.h
//  ChatDemo
//
//  Created by XXxxi on 2018/5/15.
//  Copyright © 2018年 Chomp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MessageModel.h"

@interface MessageRightTableViewCell : UITableViewCell
@property(nonatomic,strong)UIImageView *headImg;  //用户头像
@property(nonatomic,strong)UIImageView *txtOutsideImg; //对话框
@property(nonatomic,strong)UILabel *contentLbl;  //聊天内容
@property(nonatomic,strong)MessageModel *model;
@property(nonatomic,strong)UILabel *nameLbl ; //用户昵称
@end
