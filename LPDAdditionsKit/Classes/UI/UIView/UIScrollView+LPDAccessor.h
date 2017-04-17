//
//  UIScrollView+LPDAccessor.h
//  LPDAdditions
//
//  Created by foxsofter on 15/9/23.
//  Copyright © 2015年 foxsofter. All rights reserved.
//  ************** 便捷访问器 **************

#import <UIKit/UIKit.h>

@interface UIScrollView (LPDAccessor)

/**
 *  @brief  get contentOffset.x
 */
@property (nonatomic) CGFloat lpd_contentOffsetX;

/**
 *  @brief  get contentOffset.y
 */
@property (nonatomic) CGFloat lpd_contentOffsetY;

/**
 *  @brief  get contentSize.width
 */
@property (nonatomic) CGFloat lpd_contentSizeWidth;

/**
 *  @brief  get contentSize.height
 */
@property (nonatomic) CGFloat lpd_contentSizeHeight;

/**
 *  @brief  get contentInset.top
 */
@property (nonatomic) CGFloat lpd_contentInsetTop;

/**
 *  @brief  get contentInset.left
 */
@property (nonatomic) CGFloat lpd_contentInsetLeft;

/**
 *  @brief  get contentInset.bottom
 */
@property (nonatomic) CGFloat lpd_contentInsetBottom;

/**
 *  @brief  get contentInset.right
 */
@property (nonatomic) CGFloat lpd_contentInsetRight;

@end
