//
//  MessageModel.m
//  ChatDemo
//
//  Created by XXxxi on 2018/5/9.
//  Copyright © 2018年 Chomp. All rights reserved.
//

#import "MessageModel.h"

@implementation MessageModel
-(instancetype)init
{
    if(self = [super init]){
        self.messageId = @"";
        self.messageContent = @"";
        self.messageObject = @"";
        self.messageContentW = 0.0;
        self.messageContentH = 0.0;
        self.messageTime = @"";
    }
    return  self;
}
@end
