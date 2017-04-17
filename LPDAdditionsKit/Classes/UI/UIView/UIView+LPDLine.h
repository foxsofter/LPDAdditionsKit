//
//  UIView+LPDLine.h
//  LPDCrowdsource
//
//  Created by 沈强 on 16/3/30.
//  Copyright © 2016年 elm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (LPDLine)

/**
 *  划各种线 和分割线
 *
 *  @param bezierLine
 *  @param lineColor
 */
- (CAShapeLayer *)lpd_addBezierLine:(UIBezierPath *)bezierLine color:(UIColor *)lineColor;

- (CAShapeLayer *)lpd_addDottedLine:(CGPoint)startLine endPoint:(CGPoint)endPoint color:(UIColor *)lineColor;

- (CAShapeLayer *)lpd_addLine:(CGPoint)startLine endPoint:(CGPoint)endPoint color:(UIColor *)lineColor;

- (CAShapeLayer *)lpd_addLine:(CGPoint)startLine endPoint:(CGPoint)endPoint lineWidth:(CGFloat)lineWidth color:(UIColor *)lineColor;

- (CAShapeLayer *)lpd_addCornerRadius:(CGFloat)cornerRadius;

- (CAShapeLayer *)lpd_addCornerRadius:(CGFloat)cornerRadius color:(UIColor *)borderColor;

- (CAShapeLayer *)lpd_addCornerRadius:(CGFloat)cornerRadius lineWidth:(CGFloat)lineWidth color:(UIColor *)borderColor;

- (CAShapeLayer *)lpd_addCornerRadius:(CGFloat)cornerRadius lineWidth:(CGFloat)lineWidth color:(UIColor *)borderColor backgroundColor:(UIColor *)backgroundColor;

// 指定倒角
- (void)lpd_setCornerRadii:(CGFloat)cornerRadii roundingCorners:(UIRectCorner)roundingCorners;

@end
