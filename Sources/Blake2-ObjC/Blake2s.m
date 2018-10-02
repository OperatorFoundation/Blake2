//
//  Blake2s.m
//  Blake2
//
//  Created by Brandon Wiley on 11/25/17.
//  Copyright © 2017 Operator Foundation. All rights reserved.
//

#import "Blake2s.h"
#import "cblake2s.h"

@implementation Blake2s

+ (void) hash:(char *)output outlen:(size_t)outlen input:(const char *) input inlen:(size_t)inlen key:(const char *)key keylen:(size_t) keylen
{
    cblake2s(output, outlen, input, inlen, key, keylen);
}

@end
