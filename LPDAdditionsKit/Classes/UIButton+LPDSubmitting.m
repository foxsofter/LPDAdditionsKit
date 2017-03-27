//
//  UIButton+LPDSubmitting.m
//  LPDAdditions
//
//  Created by foxsofter on 15/4/2.
//  Copyright (c) 2015年 foxsofter. All rights reserved.
//  ************** 为UIButton添加菊花 **************

#import "NSObject+LPDAssociatedObject.h"
#import "UIButton+LPDSubmitting.h"
#import "UIView+LPDAccessor.h"

@interface UIButton ()

@property (nonatomic, strong) UIView *modalView;
@property (nonatomic, strong) UIActivityIndicatorView *spinnerView;
@property (nonatomic, strong) UILabel *spinnerTitleLabel;

@end

@implementation UIButton (LPDSubmitting)

- (void)lpd_beginSubmitting:(NSString *)title {
  [self lpd_endSubmitting];

  self.submitting = YES;
  self.hidden = YES;

  self.modalView = [[UIView alloc] initWithFrame:self.frame];
  self.modalView.backgroundColor = [self.backgroundColor colorWithAlphaComponent:0.6];
  self.modalView.layer.cornerRadius = self.layer.cornerRadius;
  self.modalView.layer.borderWidth = self.layer.borderWidth;
  self.modalView.layer.borderColor = self.layer.borderColor;

  CGRect viewBounds = self.modalView.bounds;
  self.spinnerView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
  self.spinnerView.tintColor = self.titleLabel.textColor;
  self.spinnerView.frame = CGRectMake(10, 5, self.lpd_height - 10, self.lpd_height - 10);
  [self.modalView addSubview:self.spinnerView];

  if (title && title.length > 0) {
    self.spinnerTitleLabel = [[UILabel alloc] initWithFrame:viewBounds];
    self.spinnerTitleLabel.textAlignment = NSTextAlignmentCenter;
    self.spinnerTitleLabel.text = title;
    self.spinnerTitleLabel.font = self.titleLabel.font;
    self.spinnerTitleLabel.textColor = self.titleLabel.textColor;
    [self.modalView addSubview:self.spinnerTitleLabel];

    self.spinnerTitleLabel.lpd_left += self.lpd_height;
  } else {
    self.spinnerView.lpd_left = self.lpd_centerX;
  }
  [self.superview addSubview:self.modalView];
  [self.spinnerView startAnimating];
}

- (void)lpd_beginSubmitting {
  [self lpd_beginSubmitting:nil];
}

- (void)lpd_endSubmitting {
  if (!self.isSubmitting) {
    return;
  }

  self.submitting = NO;
  self.hidden = NO;

  [self.modalView removeFromSuperview];
  self.modalView = nil;
  self.spinnerView = nil;
  self.spinnerTitleLabel = nil;
}

- (BOOL)isSubmitting {
  return ((NSNumber *)[self lpd_object:@selector(setSubmitting:)]).boolValue;
}

- (void)setSubmitting:(BOOL)submitting {
  [self lpd_setRetainNonatomicObject:@(submitting) withKey:@selector(setSubmitting:)];
}

- (UIActivityIndicatorView *)spinnerView {
  return [self lpd_object:@selector(setSpinnerView:)];
}

- (void)setSpinnerView:(UIActivityIndicatorView *)spinnerView {
  [self lpd_setRetainNonatomicObject:spinnerView withKey:@selector(setSpinnerView:)];
}

- (UIView *)modalView {
  return [self lpd_object:@selector(setModalView:)];
}

- (void)setModalView:(UIView *)modalView {
  [self lpd_setRetainNonatomicObject:modalView withKey:@selector(setModalView:)];
}

- (UILabel *)spinnerTitleLabel {
  return [self lpd_object:@selector(setSpinnerTitleLabel:)];
}

- (void)setSpinnerTitleLabel:(UILabel *)spinnerTitleLabel {
  [self lpd_setRetainNonatomicObject:spinnerTitleLabel withKey:@selector(setSpinnerTitleLabel:)];
}

@end
