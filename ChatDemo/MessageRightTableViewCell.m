//
//  MessageRightTableViewCell.m
//  ChatDemo
//
//  Created by XXxxi on 2018/5/15.
//  Copyright © 2018年 Chomp. All rights reserved.
//

#import "MessageRightTableViewCell.h"
#import "Masonry.h"
#define  ScreenW  [UIScreen mainScreen].bounds.size.width
#define  CheckAdapt ScreenW/750


@implementation MessageRightTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]){
//        self.headImg = [[UIImageView alloc]init];
//        self.headImg.image = [UIImage imageNamed:@"慢跑"];
//        [self.contentView addSubview:self.headImg];
//        [self.headImg mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.top.mas_equalTo(self.contentView).offset(20*CheckAdapt);
//            make.width.height.mas_equalTo(44*CheckAdapt);
//            make.right.mas_equalTo(self.contentView.mas_right).offset(-20*CheckAdapt);
//        }];
//        
//        self.nameLbl = [[UILabel alloc]init];
//        self.nameLbl.text = @"xxi";
//        [self.nameLbl setTextColor:[UIColor redColor]];
//        self.nameLbl.backgroundColor = [UIColor greenColor];
//        [self.nameLbl setFont:[UIFont systemFontOfSize:20*CheckAdapt]];
//        [self.contentView addSubview:self.nameLbl];
//        [self.nameLbl mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.top.mas_equalTo(self.headImg.mas_bottom);
//            make.centerX.mas_equalTo(self.headImg);
//        }];
//        //        self.txtOutsideImg = [[UIImageView alloc]init];
//        //        self.txtOutsideImg.image = [UIImage imageNamed:@"base_mini_left"];
//        ////        self.txtOutsideImg.backgroundColor = [UIColor blueColor];
//        //        [self.contentView addSubview:self.txtOutsideImg];
//        //        [self.txtOutsideImg mas_makeConstraints:^(MASConstraintMaker *make) {
//        //            make.left.mas_equalTo(self.headImg.mas_right).offset(10*CheckAdapt);
//        //            make.top.mas_equalTo(self.headImg);
//        //        }];
//        
//        self.contentLbl = [[UILabel alloc]init];
//        self.contentLbl.text = @"测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试";
//        self.contentLbl.textColor = [UIColor redColor];
//        self.contentLbl.numberOfLines = 0;
//        [self.contentLbl setFont:[UIFont systemFontOfSize:20*CheckAdapt]];
//        [self.contentView addSubview:self.contentLbl];
//        [self.contentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.top.mas_equalTo(self.contentView).offset(10*CheckAdapt);
//            make.right.mas_equalTo(self.headImg.mas_left).offset(-10*CheckAdapt);
//            make.left.greaterThanOrEqualTo(100*CheckAdapt);
//        }];
    }
    return  self;
}

-(void)setModel:(MessageModel *)model
{
    _model = model;
    self.contentLbl.text = model.messageContent;
    //    //判断消息的类型
    //    if([model.messageObject isEqualToString:@"0"]){ //代表发送方，文字显示在右边，非正常显示，改变约束
    //        [self.headImg mas_remakeConstraints:^(MASConstraintMaker *make) {
    //            make.top.mas_equalTo(self.contentView).offset(20*CheckAdapt);
    //            make.right.mas_equalTo(self.contentView.mas_right).offset(-10*CheckAdapt);
    //            make.width.height.mas_equalTo(44*CheckAdapt);
    //        }];
    //
    //        [self.contentLbl mas_remakeConstraints:^(MASConstraintMaker *make) {
    //            make.top.mas_equalTo(self.contentView).offset(10*CheckAdapt);
    //            make.right.mas_equalTo(self.headImg.mas_left).offset(-10*CheckAdapt);
    //            make.left.mas_greaterThanOrEqualTo(100*CheckAdapt);
    //        }];
    //    }
    
}


@end
