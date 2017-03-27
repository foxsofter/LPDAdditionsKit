//
//  UIButton+LPDAddition.m
//  LPDMvvmKit
//
//  Created by foxsofter on 16/4/6.
//  Copyright © 2016年 eleme. All rights reserved.
//  ************** 有效地设背景颜色 **************

#import "UIButton+LPDAddition.h"
#import "UIImage+LPDAddition.h"

@implementation UIButton (LPDAddition)

- (void)lpd_setBackgroundColor:(UIColor *)color forState:(UIControlState)state {
  UIImage *backgroundImage = [UIImage lpd_createdImageWithColor:color];
  self.clipsToBounds = YES;
  [self setBackgroundImage:backgroundImage forState:state];
}

@end
