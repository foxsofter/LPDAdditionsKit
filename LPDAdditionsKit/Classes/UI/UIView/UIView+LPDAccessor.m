//
//  UIView+LPDAccessor.m
//  LPDAdditions
//
//  Created by foxsofter on 15/9/23.
//  Copyright © 2015年 foxsofter. All rights reserved.
//

#import "UIView+LPDAccessor.h"

@implementation UIView (LPDAccessor)


- (CGFloat)lpd_left {
    return self.frame.origin.x;
}

- (void)setLpd_left:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)lpd_top {
    return self.frame.origin.y;
}

- (void)setLpd_top:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)lpd_right {
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setLpd_right:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}

- (CGFloat)lpd_bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setLpd_bottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}

- (CGFloat)lpd_width {
    return self.frame.size.width;
}

- (void)setLpd_width:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)lpd_height {
    return self.frame.size.height;
}

- (void)setLpd_height:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)lpd_centerX {
    return self.center.x;
}

- (void)setLpd_centerX:(CGFloat)centerX {
    self.center = CGPointMake(centerX, self.center.y);
}

- (CGFloat)lpd_centerY {
    return self.center.y;
}

- (void)setLpd_centerY:(CGFloat)centerY {
    self.center = CGPointMake(self.center.x, centerY);
}

- (CGPoint)lpd_origin {
    return self.frame.origin;
}

- (void)setLpd_origin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGSize)lpd_size {
    return self.frame.size;
}

- (void)setLpd_size:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (void)lpd_setWidthWithStaticCenter:(CGFloat)width {
    CGPoint center = self.center;
    CGFloat height = self.lpd_height;
    self.frame = CGRectMake(center.x - width / 2, center.y - height / 2, width, height);
}

- (void)lpd_setHeightWidthStaticCenter:(CGFloat)height {
    CGPoint center = self.center;
    CGFloat width = self.lpd_width;
    self.frame = CGRectMake(center.x - width / 2, center.y - height / 2, width, height);
}

@end
