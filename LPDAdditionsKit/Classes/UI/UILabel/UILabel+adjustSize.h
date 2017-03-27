//
//  UILabel+adjustSize.h
//  LPDCrowdsource
//
//  Created by 沈强 on 16/3/30.
//  Copyright © 2016年 elm. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,LPDAdjustAlignment) {
  LPDAdjustAlignmentLeft,
  LPDAdjustAlignmentRight,
  LPDAdjustAlignmentBottom,
  LPDAdjustAlignmentTop,
  LPDAdjustAlignmentCenter,
};

@interface UILabel (adjustSize)

/**
 *  adjust label size and orgin point
 *  LPDAdjustAlignmentLeft LPDAdjustAlignmentRight H adjust
 *  LPDAdjustAlignmentBottom LPDAdjustAlignmentTop V adjust
 *  @param adjustAlignment
 */

- (void)lpd_adjustSizeAlignment:(LPDAdjustAlignment)adjustAlignment;

- (void)lpd_adjustSizeAlignment:(LPDAdjustAlignment)adjustAlignment
                    margins:(CGFloat)margins;

@end
