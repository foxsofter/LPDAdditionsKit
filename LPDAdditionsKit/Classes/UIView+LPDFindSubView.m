//
//  UIView+LPDFindSubView.m
//  LPDMvvmKit
//
//  Created by foxsofter on 16/3/19.
//  Copyright © 2016年 eleme. All rights reserved.
//

#import "UIView+LPDFindSubView.h"

@implementation UIView (LPDFindSubView)

- (NSArray *)lpd_subviewsWithClass:(Class)cls {
  NSMutableArray *subviews = [NSMutableArray array];
  for (UIView *subview in self.subviews) {
    if ([subview isKindOfClass:cls]) {
      [subviews addObject:subview];
      [subviews addObjectsFromArray:[subview lpd_subviewsWithClass:cls]];
    }
  }
  return subviews;
}

@end
