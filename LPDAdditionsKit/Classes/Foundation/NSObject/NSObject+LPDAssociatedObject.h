//
//  NSObject+LPDAssociatedObject.h
//  LPDAdditions
//
//  Created by foxsofter on 15/2/23.
//  Copyright (c) 2015年 foxsofter. All rights reserved.
//  ************** 动态添加属性到对象 **************

#import <Foundation/Foundation.h>

/**
 *  @author foxsofter, 15-02-23 21:02:44
 *
 *  @brief  动态添加属性到对象，避免繁琐的添加static NSString作为key
 */
@interface NSObject (LPDAssociatedObject)

- (id)lpd_object:(SEL)key;

- (void)lpd_setRetainNonatomicObject:(id)object withKey:(SEL)key;

- (void)lpd_setCopyNonatomicObject:(id)object withKey:(SEL)key;

- (void)lpd_setRetainObject:(id)object withKey:(SEL)key;

- (void)lpd_setCopyObject:(id)object withKey:(SEL)key;

@end
