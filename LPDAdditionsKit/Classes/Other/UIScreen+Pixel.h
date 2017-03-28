//
//  UIScreen+Pixel.h
//  LPDCrowdsource
//
//  Created by 沈强 on 16/9/14.
//  Copyright © 2016年 elm. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, LPDiPhoneScreenSize) {
    LPDiPhoneScreenSizeUnkown,
    LPDiPhoneScreenSize35inch,
    LPDiPhoneScreenSize4inch,
    LPDiPhoneScreenSize47inch,
    LPDiPhoneScreenSize55inch,
};

@interface UIScreen (Pixel)

+ (CGFloat)lpd_scale;

+ (CGSize)lpd_size;

+ (CGFloat)lpd_width;

+ (CGFloat)lpd_height;

+ (CGFloat)lpd_ceilPixelValue:(CGFloat)pixelValue;

+ (CGFloat)lpd_roundPixelValu:(CGFloat)pixelValue;

+ (CGFloat)lpd_floorPixelValue:(CGFloat)pixelValue;

+ (CGFloat)lpd_pixelResize:(CGFloat)value;

+ (CGRect)lpd_pixelFrameResize:(CGRect)value;

+ (CGPoint)lpd_pixelPointResize:(CGPoint)value;

+ (CGFloat)lpd_screenResizeScale;

+ (CGFloat)lpd_screenHeightResizeScale;

+ (LPDiPhoneScreenSize)lpd_screenSize;

@end
