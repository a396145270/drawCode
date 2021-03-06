#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "NSData+MD5Digest.h"
#import "NSData+SHA1Digest.h"
#import "NSData+SHA256Digest.h"
#import "NSString+MD5Digest.h"
#import "NSString+SHA1Digest.h"
#import "NSString+SHA256Digest.h"
#import "IGHMAC.h"
#import "NSString+MD5HMAC.h"
#import "NSString+SHA1HMAC.h"
#import "NSString+SHA256HMAC.h"

FOUNDATION_EXPORT double IGDigestVersionNumber;
FOUNDATION_EXPORT const unsigned char IGDigestVersionString[];

