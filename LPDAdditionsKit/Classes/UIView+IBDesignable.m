//
//  UIButton+IBDesignable.m
//  LPDAdditionsKit
//
//  Created by Steve on 11/12/2017.
//

#import "UIView+IBDesignable.h"
#import <objc/runtime.h>

@implementation UIView (IBDesignable)

static const NSString * CORNER_RADIUS = @"CORNER_RADIUS";

- (void)setCornerRadius:(CGFloat)cornerRadius {
    [self willChangeValueForKey:@"CUSTOM_CORNER_RADIUS"];    objc_setAssociatedObject(self, &CORNER_RADIUS, [NSNumber numberWithDouble:cornerRadius], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self didChangeValueForKey:@"CUSTOM_CORNER_RADIUS"];
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
}

- (CGFloat)cornerRadius {
    return self.layer.cornerRadius;
}

@end
