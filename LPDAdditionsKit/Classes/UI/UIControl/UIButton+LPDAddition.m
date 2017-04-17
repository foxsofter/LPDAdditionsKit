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

- (void)lpd_sizeToText:(CGSize)minSize padding:(UIEdgeInsets)padding {
    CGRect rect = self.frame;
    
    CGSize labelSize = [self.titleLabel.text boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, CGFLOAT_MAX)
                                                          options:NSStringDrawingUsesLineFragmentOrigin
                                                       attributes:@{
                                                                    NSFontAttributeName: self.titleLabel.font
                                                                    }
                                                          context:nil]
    .size;
    
    labelSize.width = MAX(labelSize.width + padding.left + padding.right, minSize.width);
    labelSize.height = MAX(labelSize.height + padding.top + padding.bottom, minSize.height);
    if (self.center.x > 0 || self.center.y > 0) { // 如果设置居中
        rect.origin.x += (rect.size.width - labelSize.width) / 2;
        rect.origin.y += (rect.size.height - labelSize.height) / 2;
    }
    rect.size = labelSize;
    [self setFrame:rect];
}

@end
