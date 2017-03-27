//
//  NSMutableArray+LPDQueue.h
//  LPDMvvmKit
//
//  Created by foxsofter on 16/2/1.
//  Copyright © 2016年 eleme. All rights reserved.
//  ************** 队列 **************

#import <Foundation/Foundation.h>

@interface NSMutableArray (LPDQueue)

/**
 *  @brief 队列的容量，大于0为有效容量，小于等于0表示不限制容量
 */
@property (nonatomic, assign) NSInteger queueSize;

- (void)lpd_enqueueObject:(id)anObject;

- (id)lpd_dequeueObject;

@end
