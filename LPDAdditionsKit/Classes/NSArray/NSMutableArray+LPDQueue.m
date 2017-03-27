//
//  NSMutableArray+LPDQueue.m
//  LPDMvvmKit
//
//  Created by foxsofter on 16/2/1.
//  Copyright © 2016年 eleme. All rights reserved.
//  ************** 队列 **************

#import "NSMutableArray+LPDQueue.h"
#import "NSObject+LPDAssociatedObject.h"

@implementation NSMutableArray (LPDQueue)

BOOL queueSizeFlag = NO;

- (void)lpd_enqueueObject:(id)anObject {
  [self addObject:anObject];
  if (queueSizeFlag && self.count > self.queueSize) {
    [self removeObjectAtIndex:0];
  }
}

- (id)lpd_dequeueObject {
  id anObject = [self firstObject];
  if (self.count > 0) {
    [self removeObjectAtIndex:0];
  }
  return anObject;
}

#pragma mark - propertes

- (NSInteger)queueSize {
  return [[self lpd_object:@selector(setQueueSize:)] integerValue];
}

- (void)setQueueSize:(NSInteger)queueSize {
  [self lpd_setRetainNonatomicObject:@(queueSize) withKey:@selector(setQueueSize:)];
  if (queueSize > 0) {
    queueSizeFlag = YES;
  } else {
    queueSizeFlag = NO;
  }
}

@end
