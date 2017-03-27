//
//  NSMutableArray+LPDStack.h
//  LPDMvvmKit
//
//  Created by foxsofter on 16/2/1.
//  Copyright © 2016年 eleme. All rights reserved.
//  ************** 栈 **************

#import <Foundation/Foundation.h>

@interface NSMutableArray (LPDStack)

- (void)lpd_pushObject:(id)anObject;

- (id)lpd_popObject;

- (id)lpd_peekObject;

@end
