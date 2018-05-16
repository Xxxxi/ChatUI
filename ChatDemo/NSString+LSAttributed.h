//
//  NSString+LSAttributed.h
//  ShoppingProject
//
//  Created by admin on 15/8/3.
//  Copyright (c) 2015年 GuanYisoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (LSAttributed)

-(NSAttributedString*)settingSub:(NSString *)subStr color:(UIColor *)color font:(CGFloat) size;

//获取字符串高
-(CGFloat)getStrH:(CGFloat)width font:(CGFloat)font;
//获取字符串宽
-(CGFloat)getStrW:(CGFloat)height font:(CGFloat)font;

@end
