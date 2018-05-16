//
//  SysMessageRightTableViewCell.m
//  ChatDemo
//
//  Created by XXxxi on 2018/5/15.
//  Copyright © 2018年 Chomp. All rights reserved.
//

#import "SysMessageRightTableViewCell.h"
#import "Masonry.h"

#define ScreenW [UIScreen mainScreen].bounds.size.width


@interface SysMessageRightTableViewCell()

@property (nonatomic, strong) UILabel *timeLabel;
@property (nonatomic, strong) UIImageView *imgView;
@property (nonatomic, strong) UIImageView *bubbleImageView;
@property (nonatomic, strong) UILabel *bubbleLable;

@end

@implementation SysMessageRightTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.backgroundColor = [UIColor clearColor];
        [self loadUI];
    }
    return self;
}

- (void)loadUI{
    //图像
    self.imgView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 45, 40, 40)];
    self.imgView.image = [UIImage imageNamed:@"toux"];
    self.imgView.layer.cornerRadius = 22.5;
    self.imgView.layer.masksToBounds = YES;
    [self.contentView addSubview:self.imgView];
    [self.imgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self.contentView.mas_right).offset(-15);
        make.top.mas_equalTo(self.contentView.mas_top).offset(45);
        make.width.height.mas_equalTo(40);
    }];
    
    //时间
    self.timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 45)];
    self.timeLabel.font = [UIFont systemFontOfSize:14];
    self.timeLabel.textColor = [UIColor lightGrayColor];
    self.timeLabel.backgroundColor = [UIColor clearColor];
    self.timeLabel.textAlignment = NSTextAlignmentCenter;
    [self.contentView addSubview:self.timeLabel];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSString *currentDateStr = [dateFormatter stringFromDate:[NSDate date]];
    self.timeLabel.text = currentDateStr;
    
    //背影图片 气泡
    UIImage *bubble = [UIImage imageNamed:@"base_mini_right"];
    UIImageView *bubbleImageView = [[UIImageView alloc] initWithImage:[bubble stretchableImageWithLeftCapWidth:floorf(bubble.size.width/2) topCapHeight:floorf(bubble.size.height* 2/3)]];
    self.bubbleImageView = bubbleImageView;
    [self.contentView addSubview:self.bubbleImageView];
    
    //内容
    self.bubbleLable = [[UILabel alloc] init];
    self.bubbleLable.font = [UIFont systemFontOfSize:14];
    self.bubbleLable.textColor = [UIColor blackColor];
    self.bubbleLable.numberOfLines = 0;
    self.bubbleLable.lineBreakMode = NSLineBreakByWordWrapping;
    [self.contentView addSubview:self.bubbleLable];
}

- (void)setModel:(MessageModel *)model{
    _model = model;
    //计算大小
    CGRect s = [model.messageContent boundingRectWithSize:CGSizeMake([UIScreen mainScreen].bounds.size.width - 105, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14]} context:nil];
//    self.bubbleLable.frame = CGRectMake(-75, 60, s.size.width, s.size.height);
//    self.bubbleImageView.frame = CGRectMake(-60, 45, self.bubbleLable.frame.size.width+30, self.bubbleLable.frame.size.height+30);
    [self.bubbleLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self.imgView.mas_left).offset(-25);
        make.top.mas_equalTo(self.contentView.mas_top).offset(60);
        make.width.mas_equalTo(s.size.width);
        make.height.mas_equalTo(s.size.height);
    }];
//
    [self.bubbleImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self.imgView.mas_left).offset(-10);
        make.top.mas_equalTo(self.contentView.mas_top).offset(45);
        make.width.mas_equalTo(self.bubbleLable.mas_width).offset(30);
        make.height.mas_equalTo(self.bubbleLable.mas_height).offset(30);
    }];
    
    self.bubbleLable.text = model.messageContent;
    self.timeLabel.text = model.messageTime;
}


@end
