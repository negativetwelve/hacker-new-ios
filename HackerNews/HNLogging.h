//
//  HNLogging.h
//  HackerNews
//
//  Created by Mark Miyashita on 5/25/14.
//  Copyright (c) 2014 Mark Miyashita. All rights reserved.
//

#import <Foundation/Foundation.h>


#define HNLog(...) \
  { \
    if ([HNLogging enabled]) { \
      [HNLogging log:__VA_ARGS__]; \
    }; \
  }


@interface HNLogging : NSObject

+ (BOOL)enabled;
+ (void)log:(NSString *)format, ...;

@end
