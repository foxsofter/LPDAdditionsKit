//
//  UIScreen+Pixel.m
//  LPDCrowdsource
//
//  Created by 沈强 on 16/9/14.
//  Copyright © 2016年 elm. All rights reserved.
//

#import "UIScreen+Pixel.h"

@implementation UIScreen (Pixel)

static const CGFloat DefaultScreenWidth = 750.0/2;

static const CGFloat DefaultScreenHeight = 1134.0/2;

+ (CGFloat)lpd_scale {
  return [UIScreen mainScreen].scale;
}

+ (CGSize)lpd_size {
  return [UIScreen mainScreen].bounds.size;
}

+ (CGFloat)lpd_width {
  return [UIScreen lpd_size].width;
}

+ (CGFloat)lpd_height {
  return [UIScreen lpd_size].height;
}

+ (CGFloat)lpd_ceilPixelValue:(CGFloat)pixelValue {
  CGFloat scale = [UIScreen lpd_scale];
  return ceil(pixelValue * scale) / scale;
}

+ (CGFloat)lpd_roundPixelValu:(CGFloat)pixelValue  {
  CGFloat scale = [UIScreen lpd_scale];
  return round(pixelValue * scale) / scale;
}

+ (CGFloat)lpd_floorPixelValue:(CGFloat)pixelValue {
  CGFloat scale = [UIScreen lpd_scale];
  return floor(pixelValue * scale) / scale;
}

+ (CGFloat)lpd_pixelResize:(CGFloat) value {
  
  return [UIScreen lpd_ceilPixelValue:value * [UIScreen lpd_screenResizeScale]];
  
}

+ (CGRect)lpd_pixelFrameResize:(CGRect)value {
  
  CGRect new = CGRectMake(value.origin.x * [UIScreen lpd_screenResizeScale],
                          value.origin.y *[UIScreen lpd_screenResizeScale],
                          value.size.width * [UIScreen lpd_screenResizeScale],
                          value.size.height * [UIScreen lpd_screenResizeScale]);
  return new;
  
}

+ (CGPoint)lpd_pixelPointResize:(CGPoint) value {
  
  CGPoint new = CGPointMake(value.x * [UIScreen lpd_screenResizeScale],
                            value.y * [UIScreen lpd_screenResizeScale]);
  return new;
  
}

+ (CGFloat)lpd_screenResizeScale {
  
  static CGFloat resizeScale;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    CGSize size = [UIScreen lpd_size];
    CGFloat deviceWidth;
    if (size.width > size.height) {
      deviceWidth = size.height;
    } else {
      deviceWidth = size.width;
    }
    
    resizeScale = deviceWidth / DefaultScreenWidth;
  });
  
  return resizeScale;
  
}


+ (CGFloat)lpd_screenHeightResizeScale {
  
  static CGFloat resizeScale;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    CGSize size = [UIScreen lpd_size];
    CGFloat deviceHeight;
    if (size.width > size.height) {
      deviceHeight = size.width;
    } else {
      deviceHeight = size.height;
    }
    
    resizeScale = deviceHeight / DefaultScreenHeight;
  });
  
  return resizeScale;
  
}

@end
