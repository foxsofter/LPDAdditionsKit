//
//  UIView+LPDAccessor.h
//  LPDAdditions
//
//  Created by foxsofter on 15/9/23.
//  Copyright © 2015年 foxsofter. All rights reserved.
//  ************** 便捷访问器 **************

#import <UIKit/UIKit.h>

@interface UIView (LPDAccessor)

@property (nonatomic) CGFloat lpd_left;        ///< Shortcut for frame.origin.x.

@property (nonatomic) CGFloat lpd_top;         ///< Shortcut for frame.origin.y

@property (nonatomic) CGFloat lpd_right;       ///< Shortcut for frame.origin.x + frame.size.width

@property (nonatomic) CGFloat lpd_bottom;      ///< Shortcut for frame.origin.y + frame.size.height

@property (nonatomic) CGFloat lpd_width;       ///< Shortcut for frame.size.width.

@property (nonatomic) CGFloat lpd_height;      ///< Shortcut for frame.size.height.

@property (nonatomic) CGFloat lpd_centerX;     ///< Shortcut for center.x

@property (nonatomic) CGFloat lpd_centerY;     ///< Shortcut for center.y

@property (nonatomic) CGPoint lpd_origin;      ///< Shortcut for frame.origin.

@property (nonatomic) CGSize  lpd_size;        ///< Shortcut for frame.size.


- (void)lpd_setWidthWithStaticCenter:(CGFloat)width;

- (void)lpd_setHeightWidthStaticCenter:(CGFloat)height;

- (void)lpd_setSizeWithStaticCenter:(CGSize)size;

@end
