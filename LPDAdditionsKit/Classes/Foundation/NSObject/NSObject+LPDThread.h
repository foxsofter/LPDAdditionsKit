//
//  NSObject+LPDThread.h
//  LPDAdditions
//
//  Created by foxsofter on 15/1/21.
//  Copyright (c) 2015年 foxsofter. All rights reserved.
//  **************  对performSelector进行扩展，并添加performBlock **************

#import <Foundation/Foundation.h>

/**
 *  @author foxsofter, 15-09-24 10:09:48
 *
 *  @brief  对performSelector进行扩展，并添加performBlock
 */
@interface NSObject (LPDThread)

#pragma mark - NSObject performSelector with multi parameter

- (id)lpd_performSelector:(SEL)selector withObject:(id)p1 withObject:(id)p2 withObject:(id)p3;

- (id)lpd_performSelector:(SEL)selector withObject:(id)p1 withObject:(id)p2 withObject:(id)p3 withObject:(id)p4;

- (id)lpd_performSelector:(SEL)selector
           withObject:(id)p1
           withObject:(id)p2
           withObject:(id)p3
           withObject:(id)p4
           withObject:(id)p5;

- (id)lpd_performSelector:(SEL)selector
           withObject:(id)p1
           withObject:(id)p2
           withObject:(id)p3
           withObject:(id)p4
           withObject:(id)p5
           withObject:(id)p6;

- (id)lpd_performSelector:(SEL)selector
           withObject:(id)p1
           withObject:(id)p2
           withObject:(id)p3
           withObject:(id)p4
           withObject:(id)p5
           withObject:(id)p6
           withObject:(id)p7;

#pragma mark - NSObject performSelector with multi parameter and delay

- (void)lpd_performSelector:(SEL)selector afterDelay:(NSTimeInterval)delay;

- (void)lpd_performSelector:(SEL)selector withObject:(id)p1 withObject:(id)p2 afterDelay:(NSTimeInterval)delay;

- (void)lpd_performSelector:(SEL)selector
             withObject:(id)p1
             withObject:(id)p2
             withObject:(id)p3
             afterDelay:(NSTimeInterval)delay;

- (void)lpd_performSelector:(SEL)selector
             withObject:(id)p1
             withObject:(id)p2
             withObject:(id)p3
             withObject:(id)p4
             afterDelay:(NSTimeInterval)delay;

- (void)lpd_performSelector:(SEL)selector
             withObject:(id)p1
             withObject:(id)p2
             withObject:(id)p3
             withObject:(id)p4
             withObject:(id)p5
             afterDelay:(NSTimeInterval)delay;

- (void)lpd_performSelector:(SEL)selector
             withObject:(id)p1
             withObject:(id)p2
             withObject:(id)p3
             withObject:(id)p4
             withObject:(id)p5
             withObject:(id)p6
             afterDelay:(NSTimeInterval)delay;

- (void)lpd_performSelector:(SEL)selector
             withObject:(id)p1
             withObject:(id)p2
             withObject:(id)p3
             withObject:(id)p4
             withObject:(id)p5
             withObject:(id)p6
             withObject:(id)p7
             afterDelay:(NSTimeInterval)delay;

#pragma mark - NSObject performBlock

- (void)lpd_performBlock:(void (^)(void))block;

- (void)lpd_performBlock:(void (^)(void))block afterDelay:(NSTimeInterval)delay;

@end
