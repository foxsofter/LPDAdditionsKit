//
//  NSArray+LPDOperation.m
//  LPDCrowdsource
//
//  Created by GYZhu on 7/13/16.
//  Copyright © 2016 elm. All rights reserved.
//

#import "NSArray+LPDOperation.h"

@implementation NSArray (LPDOperation)

- (CGFloat)lpd_getSum {
  return [[self valueForKeyPath:@"@sum.self"] floatValue];
}

- (CGFloat)lpd_getMax {
  return [[self valueForKeyPath:@"@max.self"] floatValue];
}

@end
