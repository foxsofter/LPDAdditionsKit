//
//  NSArray+LPDRandom.m
//  LPDAdditions
//
//  Created by foxsofter on 15/11/25.
//  Copyright © 2015年 foxsofter. All rights reserved.
//  ************** 得到元素处于随机位置的数组 **************

#import "NSArray+LPDRandom.h"

@implementation NSArray (LPDRandom)

- (NSArray *)lpd_randomCopy {
  NSMutableArray *mutableArray = [self mutableCopy];
  NSUInteger count = [mutableArray count];
  if (count > 1) {
    for (NSUInteger i = count - 1; i > 0; --i) {
      [mutableArray exchangeObjectAtIndex:i withObjectAtIndex:arc4random_uniform((int32_t)(i + 1))];
    }
  }
  return [mutableArray copy];
}

@end
