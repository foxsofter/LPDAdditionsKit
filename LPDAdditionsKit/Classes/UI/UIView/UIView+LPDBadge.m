//
//  UIView+LPDBadge.m
//  LPDMvvmKit
//
//  Created by foxsofter on 16/4/15.
//  Copyright © 2016年 eleme. All rights reserved.
//

#import "NSObject+LPDAssociatedObject.h"

#import "UIColor+LPDAddition.h"
#import "UIView+LPDBadge.h"

@interface UIView ()

@property (nonatomic, strong) UIView *badgeView;

@end

@implementation UIView (LPDBadge)

#pragma mark - properties

- (BOOL)shouldShowBadge {
  return [[self lpd_object:@selector(setShouldShowBadge:)] boolValue];
}

- (void)setShouldShowBadge:(BOOL)shouldShowBadge {
  [self lpd_setRetainNonatomicObject:@(shouldShowBadge) withKey:@selector(setShouldShowBadge:)];

  if (self) {
    if (shouldShowBadge && !self.badgeView) {
      self.badgeView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 6, 6)];
      self.badgeView.layer.cornerRadius = 3;
      self.badgeView.backgroundColor = [UIColor lpd_colorWithHexString:@"#FF5E1C"];
      [self addSubview:self.badgeView];
      if (self.badgeConfigBlock) {
        self.badgeConfigBlock(self.badgeView);
      }
    }
    if (!shouldShowBadge && self.badgeView) {
      [self.badgeView removeFromSuperview];
      self.badgeView = nil;
    }
  }
}

- (void (^)(UIView *))badgeConfigBlock {
  return [self lpd_object:@selector(setBadgeConfigBlock:)];
}

- (void)setBadgeConfigBlock:(void (^)(UIView *))badgeConfigBlock {
  [self lpd_setCopyNonatomicObject:badgeConfigBlock withKey:@selector(setBadgeConfigBlock:)];
}

- (UIView *)badgeView {
  return [self lpd_object:@selector(setBadgeView:)];
}

- (void)setBadgeView:(UIView *)badgeView {
  [self lpd_setRetainNonatomicObject:badgeView withKey:@selector(setBadgeView:)];
}

@end
