//
//  MessageModel.h
//  ChatDemo
//
//  Created by XXxxi on 2018/5/9.
//  Copyright © 2018年 Chomp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MessageModel : NSObject
@property(nonatomic,copy)NSString *messageId;
@property(nonatomic,copy)NSString *messageContent;
@property(nonatomic,copy)NSString *messageObject;
@property(nonatomic,assign)float messageContentW;
@property(nonatomic,assign)float messageContentH;
@property(nonatomic,copy)NSString *messageTime; //消息时间
@end
