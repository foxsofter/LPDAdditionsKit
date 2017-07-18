//
//  UIImageView+LPDAnimate.m
//  LPDCrowdsource
//
//  Created by GYZhu on 7/22/16.
//  Copyright © 2016 elm. All rights reserved.
//

#import "UIImageView+LPDAnimate.h"

#define ANIMATION_KEY @"Rotate"

@implementation UIImageView (LPDAnimate)

- (void)startRotating {
  [self.layer removeAnimationForKey:ANIMATION_KEY];
  CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform"];
  animation.fromValue = [NSValue valueWithCATransform3D:self.layer.transform];
  animation.toValue = [NSValue valueWithCATransform3D:CATransform3DRotate(self.layer.transform, 3.14, 0, 0, 1.0)];
  animation.duration = 1;
  animation.repeatDuration = CGFLOAT_MAX;
  [self.layer addAnimation:animation forKey:ANIMATION_KEY];
}

- (void)stopRotating {
  [self.layer removeAnimationForKey:ANIMATION_KEY];
}

- (void)stopRotatingWithRemove {
  [self.layer removeAnimationForKey:ANIMATION_KEY];
  [self removeFromSuperview];
}

@end
