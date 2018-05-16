//
//  ViewController.m
//  ChatDemo
//
//  Created by XXxxi on 2018/5/9.
//  Copyright © 2018年 Chomp. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "MessageTableViewCell.h"
#import "MessageModel.h"
#import "NSString+LSAttributed.h"
#import "XxiTextView.h"
#import "MessageRightTableViewCell.h"
#import "SysMessageTableViewCell.h"
#import "XxiMessageTableViewCell.h"
#import "SysMessageRightTableViewCell.h"



#define  ScreenW  [UIScreen mainScreen].bounds.size.width
#define  CheckAdapt ScreenW/750

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *myTableView;
@property(nonatomic,strong)NSMutableArray *dataArr;
@property(nonatomic,strong)UIView *bottomView;
@property(nonatomic,strong)UIView *voiceSelectBtn;
@property(nonatomic,strong)UITextView *inputTextView;
@end

@implementation ViewController
{
    BOOL isShowKeyBoard;//是否展开键盘
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initUI];
    [self testData];
    // Do0 any additional setup after loading the view, typically from a nib.
}

#pragma mark TestData
-(void)testData{
    MessageModel  *model0 = [[MessageModel alloc]init];
    model0.messageId = @"0";
    model0.messageContent = @"哦";
    model0.messageContentH = [model0.messageContent getStrH:ScreenW-105 font:14];
    model0.messageObject = @"0";
    model0.messageTime = @"2018-05-15 15:04:58";
    [self.dataArr addObject:model0];
    
    //0代表发送者，文字显示在右边  1代表接收者，文字显示在左边
    MessageModel  *model1 = [[MessageModel alloc]init];
    model1.messageId = @"0";
    model1.messageContent = @"测试测试测试测试";
    model1.messageContentH = [model1.messageContent getStrH:ScreenW-105 font:14];
    model1.messageObject = @"0";
    model1.messageTime = @"2018-05-15 15:04:58";
    [self.dataArr addObject:model1];

    MessageModel  *model2 = [[MessageModel alloc]init];
    model2.messageId = @"1";
    model2.messageContent = @"测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试";
    model2.messageContentH = [model2.messageContent getStrH:ScreenW-105 font:14];
    model2.messageObject = @"1";
    model2.messageTime = @"2018-05-15 15:04:58";
    [self.dataArr addObject:model2];

    MessageModel  *model3 = [[MessageModel alloc]init];
    model3.messageId = @"2";
    model3.messageContent = @"测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试";
    model3.messageContentH = [model3.messageContent getStrH:ScreenW-105 font:14];
    model3.messageObject = @"0";
    model3.messageTime = @"2018-05-15 15:04:58";
    [self.dataArr addObject:model3];

    MessageModel  *model4 = [[MessageModel alloc]init];
    model4.messageId = @"3";
    model4.messageContent = @"测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试";
    model4.messageContentH = [model4.messageContent getStrH:ScreenW-105 font:14];
    model4.messageObject = @"1";
    model4.messageTime = @"2018-05-15 15:04:58";
    [self.dataArr addObject:model4];
    //reload data
    [self.myTableView reloadData];
}

#pragma mark initUI
-(void)initUI{
    
    self.myTableView = [[UITableView alloc]init];
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
    [self.myTableView registerClass:[MessageTableViewCell class] forCellReuseIdentifier:@"MessageTableViewCell"];
    [self.myTableView registerClass:[SysMessageTableViewCell class] forCellReuseIdentifier:@"SysMessageTableViewCell"];
    [self.myTableView registerClass:[XxiMessageTableViewCell class] forCellReuseIdentifier:@"XxiMessageTableViewCell"];
    [self.myTableView registerClass:[SysMessageRightTableViewCell class] forCellReuseIdentifier:@"SysMessageRightTableViewCell"];
    self.myTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:self.myTableView];
    [self.myTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.mas_equalTo(self.view);
        make.bottom.mas_equalTo(self.view).offset(-100*CheckAdapt);
    }];
    //随便加一句注释吧
}

#pragma mark tableViewDelegate && tableViewDataSource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return  self.dataArr.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row % 2 == 0){
        SysMessageTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SysMessageTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        if(self.dataArr.count != 0){
            MessageModel *model = self.dataArr[indexPath.row];
            [cell setModel:model];
        }
        return  cell;
    }
    SysMessageRightTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SysMessageRightTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    if(self.dataArr.count != 0){
        MessageModel *model = self.dataArr[indexPath.row];
        [cell setModel:model];
    }
    return  cell;

    
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{

    if(self.dataArr.count != 0){
        MessageModel *model = self.dataArr[indexPath.row];
        if(model.messageContentH <= 44*CheckAdapt){
            return  44*CheckAdapt+100*CheckAdapt;
        }else {
            NSLog(@"打印文本高度%f",model.messageContentH);
            return model.messageContentH+40*CheckAdapt+100*CheckAdapt;
        }
    }else {
        return 200+100*CheckAdapt;
    }
}

#pragma mark lazyLoad
-(NSMutableArray *)dataArr
{
    if(!_dataArr){
        _dataArr = [[NSMutableArray alloc]init];
    }
    return  _dataArr;
}

@end
