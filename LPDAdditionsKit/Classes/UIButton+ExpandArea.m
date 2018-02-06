//
//  UIButton+ExpendArea.m
//  LPDZimSDK
//
//  Created by Assuner on 2018/1/15.
//

#import "UIButton+ExpandArea.h"
#import <objc/runtime.h>

@implementation UIButton (ExpandArea)

- (void)setExpandedAreaEdge:(UIEdgeInsets)edge {
  NSValue *valueObj  = [NSValue valueWithUIEdgeInsets:edge];
  objc_setAssociatedObject(self, _cmd, valueObj, OBJC_ASSOCIATION_RETAIN);
}

#pragma - override

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
  CGRect expandedClickedRect = [self _expandedClickedRect];
  return CGRectContainsPoint(expandedClickedRect, point);
}

#pragma - private

- (CGRect)_expandedClickedRect {
  UIEdgeInsets edge = [self _expandedAreaEdge];
  CGRect expandedClickRect = CGRectMake(self.bounds.origin.x - edge.left, self.bounds.origin.y - edge.top, self.bounds.size.width + edge.right + edge.left, self.bounds.size.height + edge.top + edge.bottom);
  return expandedClickRect;
}

- (UIEdgeInsets)_expandedAreaEdge {
  NSValue *valueObj = objc_getAssociatedObject(self, @selector(setExpandedAreaEdge:));
  UIEdgeInsets insets = [valueObj UIEdgeInsetsValue];
  return insets;
}

@end
