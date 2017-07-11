//
//  UIDevice+LPDAddition.h
//  LPDAdditions
//
//  Created by foxsofter on 15/10/31.
//  Copyright © 2015年 foxsofter. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIDevice (LPDAddition)

+ (NSString *)platform;

+ (BOOL)isSimulator;

+ (NSString *)platformString;

@end

NS_ASSUME_NONNULL_END
