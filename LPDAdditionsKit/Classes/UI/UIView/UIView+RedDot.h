//
//  UIView+RedDot.h
//  LPDCrowdsource
//
//  Created by 沈强 on 16/9/1.
//  Copyright © 2016年 elm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (RedDot)

- (void)lpd_addRedDotWithRadius:(CGFloat)radius offsetX:(CGFloat)offsetX offsetY:(CGFloat)offsetY;

- (void)lpd_showRedDotWithRadius:(CGFloat)radius offsetX:(CGFloat)offsetX offsetY:(CGFloat)offsetY;

- (void)lpd_showRedDot;

- (void)lpd_hiddenRedDot;

@end
