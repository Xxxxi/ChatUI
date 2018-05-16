//
//  MessageTableViewCell.m
//  ChatDemo
//
//  Created by XXxxi on 2018/5/9.
//  Copyright © 2018年 Chomp. All rights reserved.
//

#import "MessageTableViewCell.h"
#import "Masonry.h"

#define  ScreenW  [UIScreen mainScreen].bounds.size.width
#define  CheckAdapt ScreenW/750

@implementation MessageTableViewCell

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
        self.headImg = [[UIImageView alloc]init];
        self.headImg.image = [UIImage imageNamed:@"慢跑"];
        [self.contentView addSubview:self.headImg];
        [self.headImg mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.mas_equalTo(self.contentView).offset(20*CheckAdapt);
            make.width.height.mas_equalTo(44*CheckAdapt);
        }];
        
        self.nameLbl = [[UILabel alloc]init];
        self.nameLbl.text = @"xxi";
        [self.nameLbl setTextColor:[UIColor redColor]];
        [self.nameLbl setFont:[UIFont systemFontOfSize:20*CheckAdapt]];
        [self.contentView addSubview:self.nameLbl];
        [self.nameLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.headImg.mas_bottom);
            make.centerX.mas_equalTo(self.headImg);
        }];
        
        //背景图片气泡
        UIImage *bubble = [UIImage imageNamed:@"base_mini_left"];
        self.txtOutsideImg = [[UIImageView alloc]initWithImage:[bubble stretchableImageWithLeftCapWidth:floorf(bubble.size.width/2) topCapHeight:floorf(bubble.accessibilityFrame.size.height/2)]];
        [self.contentView addSubview:self.txtOutsideImg];
        
        
//        self.txtOutsideImg = [[UIImageView alloc]init];
//        self.txtOutsideImg.image = [UIImage imageNamed:@"base_mini_left"];
////        self.txtOutsideImg.backgroundColor = [UIColor blueColor];
//        [self.contentView addSubview:self.txtOutsideImg];
//        [self.txtOutsideImg mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.mas_equalTo(self.headImg.mas_right).offset(10*CheckAdapt);
//            make.top.mas_equalTo(self.headImg);
//        }];
        
        self.contentLbl = [[UILabel alloc]init];
        self.contentLbl.text = @"测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试";
        self.contentLbl.textColor = [UIColor redColor];
        self.contentLbl.backgroundColor = [UIColor greenColor];
        self.contentLbl.numberOfLines = 0;
        [self.contentLbl setFont:[UIFont systemFontOfSize:20*CheckAdapt]];
        [self.contentView addSubview:self.contentLbl];
//        [self.contentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.top.mas_equalTo(self.contentView).offset(10*CheckAdapt);
//            make.left.mas_equalTo(self.headImg.mas_right).offset(10*CheckAdapt);
//            make.right.lessThanOrEqualTo(@(-100*CheckAdapt));
//        }];
    }
    return  self;
}

-(void)setModel:(MessageModel *)model
{
    _model = model;
    self.contentLbl.text = model.messageContent;
    //计算文字的大小
    
    
}



@end
