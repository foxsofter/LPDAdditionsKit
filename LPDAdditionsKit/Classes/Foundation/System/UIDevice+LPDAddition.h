//
//  UIDevice+LPDAddition.h
//  LPDAdditions
//
//  Created by foxsofter on 15/10/31.
//  Copyright © 2015年 foxsofter. All rights reserved.
//  ************** 获取设备名字 **************


#import <UIKit/UIKit.h>

@interface UIDevice (LPDAddition)

+ (NSString *)lpd_platform;

+ (BOOL)lpd_isSimulator;

+ (NSString *)lpd_platformString;

@end
