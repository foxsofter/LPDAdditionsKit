//
//  NSString+IP.h
//  Pods
//
//  Created by Assuner on 2017/3/27.
//
//

#import <Foundation/Foundation.h>

@interface NSString (IP)

+ (NSString *)lpd_uuid_idfa;
+ (NSString *)lpd_getIPAddress:(BOOL)preferIPv4;

@end
