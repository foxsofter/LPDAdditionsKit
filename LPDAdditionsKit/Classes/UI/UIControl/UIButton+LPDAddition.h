//
//  UIButton+LPDAddition.h
//  LPDMvvmKit
//
//  Created by foxsofter on 16/4/6.
//  Copyright © 2016年 eleme. All rights reserved.
//  ************** 有效地设背景颜色 **************

#import <UIKit/UIKit.h>

@interface UIButton (LPDAddition)

- (void)lpd_setBackgroundColor:(nullable UIColor *)color forState:(UIControlState)state;
- (void)lpd_sizeToText:(CGSize)minSize padding:(UIEdgeInsets)padding;
@end
