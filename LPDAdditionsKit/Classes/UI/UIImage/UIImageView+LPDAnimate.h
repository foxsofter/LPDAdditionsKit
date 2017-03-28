//
//  UIImageView+LPDAnimate.h
//  LPDCrowdsource
//
//  Created by GYZhu on 7/22/16.
//  Copyright © 2016 elm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (LPDAnimate)

- (void)lpd_startRotating;
- (void)lpd_stopRotating;
- (void)lpd_stopRotatingWithRemove;

@end
