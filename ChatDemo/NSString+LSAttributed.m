//
//  NSString+LSAttributed.m
//  ShoppingProject
//
//  Created by admin on 15/8/3.
//  Copyright (c) 2015年 GuanYisoft. All rights reserved.
//

#import "NSString+LSAttributed.h"

@implementation NSString (LSAttributed)
-(NSMutableAttributedString *)settingSub:(NSString *)subStr color:(UIColor *)color font:(CGFloat)size
{
   NSMutableAttributedString *attriString = [[NSMutableAttributedString alloc] initWithString:self];
    NSDictionary *attrsDictionary = [NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:size],NSFontAttributeName,  color,NSForegroundColorAttributeName,nil];
    [attriString addAttributes:attrsDictionary range:[self rangeOfString:subStr]];
    return attriString;
}

-(CGFloat)getStrH:(CGFloat)width font:(CGFloat)font
{
    CGSize  actualsize;
    CGSize size = CGSizeMake(width, MAXFLOAT);
    NSDictionary * tdic = [NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:font],NSFontAttributeName,nil];
    //ios7方法，获取文本需要的size，限制宽度
    actualsize =[self boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin  attributes:tdic context:nil].size;
    return actualsize.height;
}


-(CGFloat)getStrW:(CGFloat)height font:(CGFloat)font
{
    CGSize  actualsize;
    CGSize size = CGSizeMake(MAXFLOAT, height);
    NSDictionary * tdic = [NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:font],NSFontAttributeName,nil];
    //ios7方法，获取文本需要的size，限制宽度
    actualsize =[self boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin  attributes:tdic context:nil].size;
    return actualsize.width;
}
@end
