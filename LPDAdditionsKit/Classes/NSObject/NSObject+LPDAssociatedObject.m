//
//  NSObject+LPDAssociatedObject.m
//  LPDAdditions
//
//  Created by foxsofter on 15/2/23.
//  Copyright (c) 2015年 foxsofter. All rights reserved.
//  ************** 动态添加属性到对象 **************

#import "NSObject+LPDAssociatedObject.h"
#import <objc/runtime.h>

@implementation NSObject (AssociatedObject)

- (id)lpd_object:(SEL)key {
  return objc_getAssociatedObject(self, key);
}

- (void)lpd_setRetainNonatomicObject:(id)object withKey:(SEL)key {
  objc_setAssociatedObject(self, key, object, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)lpd_setCopyNonatomicObject:(id)object withKey:(SEL)key {
  objc_setAssociatedObject(self, key, object, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void)lpd_setRetainObject:(id)object withKey:(SEL)key {
  objc_setAssociatedObject(self, key, object, OBJC_ASSOCIATION_RETAIN);
}

- (void)lpd_setCopyObject:(id)object withKey:(SEL)key {
  objc_setAssociatedObject(self, key, object, OBJC_ASSOCIATION_COPY);
}

@end
