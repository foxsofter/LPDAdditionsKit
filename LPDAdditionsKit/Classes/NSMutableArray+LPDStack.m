//
//  NSMutableArray+LPDStack.m
//  LPDMvvmKit
//
//  Created by foxsofter on 16/2/1.
//  Copyright © 2016年 eleme. All rights reserved.
//  ************** 栈 **************

#import "NSMutableArray+LPDStack.h"

@implementation NSMutableArray (LPDStack)

- (void)lpd_pushObject:(id)anObject {
  [self addObject:anObject];
}

- (id)lpd_popObject {
  id anObject = [self lastObject];
  if (self.count > 0) {
    [self removeLastObject];
  }
  return anObject;
}

- (id)lpd_peekObject {
  return [self lastObject];
}

@end
