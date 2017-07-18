//
//  UIImageView+LPDAnimate.h
//  LPDCrowdsource
//
//  Created by GYZhu on 7/22/16.
//  Copyright © 2016 elm. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (LPDAnimate)

- (void)startRotating;
- (void)stopRotating;
- (void)stopRotatingWithRemove;

@end

NS_ASSUME_NONNULL_END
