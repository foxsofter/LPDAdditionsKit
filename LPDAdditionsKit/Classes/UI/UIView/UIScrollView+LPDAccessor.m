//
//  UIScrollView+LPDAccessor.m
//  LPDAdditions
//
//  Created by foxsofter on 15/9/23.
//  Copyright © 2015年 foxsofter. All rights reserved.
//  ************** 便捷访问器 **************

#import "UIScrollView+LPDAccessor.h"

@implementation UIScrollView (LPDAccessor)

#pragma mark - Content Offset

- (CGFloat)lpd_contentOffsetX {
  return self.contentOffset.x;
}

- (CGFloat)lpd_contentOffsetY {
  return self.contentOffset.y;
}

- (void)setLpd_contentOffsetX:(CGFloat)newContentOffsetX {
  self.contentOffset = CGPointMake(newContentOffsetX, self.lpd_contentOffsetY);
}

- (void)setLpd_contentOffsetY:(CGFloat)newContentOffsetY {
  self.contentOffset = CGPointMake(self.lpd_contentOffsetX, newContentOffsetY);
}

#pragma mark - Content Size

- (CGFloat)lpd_contentSizeWidth {
  return self.contentSize.width;
}

- (CGFloat)lpd_contentSizeHeight {
  return self.contentSize.height;
}

- (void)setLpd_contentSizeWidth:(CGFloat)newContentSizeWidth {
  self.contentSize = CGSizeMake(newContentSizeWidth, self.lpd_contentSizeHeight);
}

- (void)setLpd_contentSizeHeight:(CGFloat)newContentSizeHeight {
  self.contentSize = CGSizeMake(self.lpd_contentSizeWidth, newContentSizeHeight);
}

#pragma mark - Content Inset

- (CGFloat)lpd_contentInsetTop {
  return self.contentInset.top;
}

- (CGFloat)lpd_contentInsetRight {
  return self.contentInset.right;
}

- (CGFloat)lpd_contentInsetBottom {
  return self.contentInset.bottom;
}

- (CGFloat)lpd_contentInsetLeft {
  return self.contentInset.left;
}

- (void)setLpd_contentInsetTop:(CGFloat)newContentInsetTop {
  UIEdgeInsets newContentInset = self.contentInset;
  newContentInset.top = newContentInsetTop;
  self.contentInset = newContentInset;
}

- (void)setLpd_contentInsetRight:(CGFloat)newContentInsetRight {
  UIEdgeInsets newContentInset = self.contentInset;
  newContentInset.right = newContentInsetRight;
  self.contentInset = newContentInset;
}

- (void)setLpd_contentInsetBottom:(CGFloat)newContentInsetBottom {
  UIEdgeInsets newContentInset = self.contentInset;
  newContentInset.bottom = newContentInsetBottom;
  self.contentInset = newContentInset;
}

- (void)setLpd_contentInsetLeft:(CGFloat)newContentInsetLeft {
  UIEdgeInsets newContentInset = self.contentInset;
  newContentInset.left = newContentInsetLeft;
  self.contentInset = newContentInset;
}

@end
