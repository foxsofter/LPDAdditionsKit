//
//  NSString+LPDAddition.h
//  LPDAdditions
//
//  Created by foxsofter on 15/11/26.
//  Copyright © 2015年 foxsofter. All rights reserved.
//  ************** 判空，逆置等 **************

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (LPDAddition)

- (NSString *)lpd_reverse;

- (NSString *)lpd_stringByRemovingWithPattern:(NSString *)patternString;

- (NSMutableAttributedString *)lpd_adjustTextColor:(UIColor *)color range:(NSRange)range;

- (BOOL)lpd_isEmpty;

- (BOOL)lpd_containsString:(NSString *)str;

@end
