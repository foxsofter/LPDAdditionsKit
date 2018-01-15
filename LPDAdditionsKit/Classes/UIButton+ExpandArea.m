//
//  UIButton+ExpendArea.m
//  LPDZimSDK
//
//  Created by Assuner on 2018/1/15.
//

#import "UIButton+ExpandArea.h"
#import <objc/runtime.h>

static const NSString *top = @"top";
static const NSString *left = @"left";
static const NSString *bottom = @"bottom";
static const NSString *right = @"right";

@implementation UIButton (ExpandArea)

- (void)setExpandedAreaEdge:(UIEdgeInsets)edge {
  [self _setExpandedValue:edge.top forKey:&top];
  [self _setExpandedValue:edge.left forKey:&left];
  [self _setExpandedValue:edge.bottom forKey:&bottom];
  [self _setExpandedValue:edge.right forKey:&right];
}


- (UIEdgeInsets)_expandedAreaEdge {
  return UIEdgeInsetsMake([self _ExpandedValueForKey:&top], [self _ExpandedValueForKey:&left], [self _ExpandedValueForKey:&bottom], [self _ExpandedValueForKey:&right]);
}

- (CGRect)_expandedClickedRect {
  UIEdgeInsets edge = [self _expandedAreaEdge];
  CGRect expandedClickRect = CGRectMake(self.bounds.origin.x - edge.left, self.bounds.origin.y - edge.top, self.bounds.size.width + edge.right + edge.left, self.bounds.size.height + edge.top + edge.bottom);
  
  return expandedClickRect;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
  if(!self.userInteractionEnabled || self.hidden || !self.enabled) {
    return nil;
  }
  CGRect expandedClickedRect = [self _expandedClickedRect];
  return CGRectContainsPoint(expandedClickedRect, point) ? self : nil;
}

- (void)_setExpandedValue:(CGFloat)value forKey:(void *)key {
  objc_setAssociatedObject(self, key, @(value), OBJC_ASSOCIATION_RETAIN);
}

- (CGFloat)_ExpandedValueForKey:(void *)key {
  return [objc_getAssociatedObject(self, key) floatValue];
}

@end
