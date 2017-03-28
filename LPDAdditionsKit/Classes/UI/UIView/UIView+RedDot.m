//
//  UIView+RedDot.m
//  LPDCrowdsource
//
//  Created by 沈强 on 16/9/1.
//  Copyright © 2016年 elm. All rights reserved.
//

#import "UIView+RedDot.h"
#import <objc/runtime.h>

@implementation UIView (RedDot)

- (void)lpd_addRedDotWithRadius:(CGFloat)radius offsetX:(CGFloat)offsetX offsetY:(CGFloat)offsetY {
  CAShapeLayer *redDot = [self lpd_redDot];
  
  if (redDot) {
    [redDot removeFromSuperlayer];
  }
  
  UIBezierPath *redDotPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, radius*2, radius*2)];
  CAShapeLayer *redDotLayer = [CAShapeLayer layer];
  redDotLayer.fillColor = [UIColor redColor].CGColor;
  redDotLayer.frame = CGRectMake(CGRectGetWidth(self.frame)-radius+offsetX, -radius+offsetY, radius*2, radius*2);
  redDotLayer.path = redDotPath.CGPath;
  [self lpd_setRedDot:redDotLayer];
  [self.layer addSublayer:redDotLayer];
  redDotLayer.hidden = YES;
}

- (void)lpd_showRedDotWithRadius:(CGFloat)radius offsetX:(CGFloat)offsetX offsetY:(CGFloat)offsetY {
  
  CAShapeLayer *redDot = [self lpd_redDot];
  
  if (redDot) {
    [redDot removeFromSuperlayer];
  }
  
  UIBezierPath *redDotPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, radius*2, radius*2)];
  CAShapeLayer *redDotLayer = [CAShapeLayer layer];
  redDotLayer.fillColor = [UIColor redColor].CGColor;
  redDotLayer.frame = CGRectMake(CGRectGetMaxX(self.frame)-radius+offsetX, -radius+offsetY, radius*2, radius*2);
  redDotLayer.path = redDotPath.CGPath;
  [self lpd_setRedDot:redDotLayer];
  [self.layer addSublayer:redDotLayer];
}

- (void)lpd_showRedDot {
  CAShapeLayer *redDot = [self lpd_redDot];
  if (redDot) {
    redDot.hidden = NO;
  }
}

- (void)lpd_hiddenRedDot {
  CAShapeLayer *redDot = [self lpd_redDot];
  if (redDot) {
    redDot.hidden = YES;
  }
}

#pragma mark - private

- (CAShapeLayer *)lpd_redDot {
  return objc_getAssociatedObject(self, @selector(lpd_setRedDot:));
}

- (void)lpd_setRedDot:(CAShapeLayer *)layer {
  objc_setAssociatedObject(self, _cmd, layer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
