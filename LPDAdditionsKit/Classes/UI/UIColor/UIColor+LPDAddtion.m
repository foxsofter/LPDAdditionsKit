//
//  UIColor+LPDAddition.m
//  LPDAdditions
//
//  Created by foxsofter on 15/1/19.
//  Copyright (c) 2015年 foxsofter. All rights reserved.
//  ************** 从十六进制字符串获取颜色，反色 **************

#import "UIColor+LPDAddition.h"

@implementation UIColor (LPDAddition)

+ (CGFloat)lpd_colorComponentFrom:(NSString *)string start:(NSUInteger)start length:(NSUInteger)length {
  NSString *substring = [string substringWithRange:NSMakeRange(start, length)];
  NSString *fullHex = length == 2 ? substring : [NSString stringWithFormat:@"%@%@", substring, substring];
  unsigned hexComponent;
  [[NSScanner scannerWithString:fullHex] scanHexInt:&hexComponent];
  return hexComponent / 255.0;
}

+ (UIColor *)lpd_colorWithHexString:(NSString *)hexString {
  NSString *colorString = [[hexString stringByReplacingOccurrencesOfString:@"#" withString:@""] uppercaseString];
  CGFloat alpha, red, blue, green;
  switch ([colorString length]) {
    case 3: // #RGB
      alpha = 1.0f;
      red = [self lpd_colorComponentFrom:colorString start:0 length:1];
      green = [self lpd_colorComponentFrom:colorString start:1 length:1];
      blue = [self lpd_colorComponentFrom:colorString start:2 length:1];
      break;
    case 4: // #ARGB
      alpha = [self lpd_colorComponentFrom:colorString start:0 length:1];
      red = [self lpd_colorComponentFrom:colorString start:1 length:1];
      green = [self lpd_colorComponentFrom:colorString start:2 length:1];
      blue = [self lpd_colorComponentFrom:colorString start:3 length:1];
      break;
    case 6: // #RRGGBB
      alpha = 1.0f;
      red = [self lpd_colorComponentFrom:colorString start:0 length:2];
      green = [self lpd_colorComponentFrom:colorString start:2 length:2];
      blue = [self lpd_colorComponentFrom:colorString start:4 length:2];
      break;
    case 8: // #AARRGGBB
      alpha = [self lpd_colorComponentFrom:colorString start:0 length:2];
      red = [self lpd_colorComponentFrom:colorString start:2 length:2];
      green = [self lpd_colorComponentFrom:colorString start:4 length:2];
      blue = [self lpd_colorComponentFrom:colorString start:6 length:2];
      break;
    default:
      return nil;
  }
  return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

- (UIColor *)lpd_antiColor {
  CGFloat red, green, blue, alpha;
  BOOL isCoverted;

  red = green = blue = alpha = 0.0f;
  isCoverted = [self getRed:&red green:&green blue:&blue alpha:&alpha];
  // 能正确获取当前颜色值
  if (isCoverted) {
    return [UIColor colorWithRed:(1.0f - red) green:(1.0f - green) blue:(1.0f - blue) alpha:alpha];
  } else {
    return [UIColor whiteColor];
  }
}

@end