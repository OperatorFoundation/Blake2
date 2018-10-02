//
//  Blake2s.h
//  Blake2
//
//  Created by Brandon Wiley on 11/25/17.
//  Copyright © 2017 Operator Foundation. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Blake2s : NSObject

+ (void) hash:(char *)output outlen:(size_t)outlen input:(const char *)input inlen:(size_t)inlen key:(const char *)key keylen:(size_t) keylen;

@end

