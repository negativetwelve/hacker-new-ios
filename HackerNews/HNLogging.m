//
//  HNLogging.m
//  HackerNews
//
//  Created by Mark Miyashita on 5/25/14.
//  Copyright (c) 2014 Mark Miyashita. All rights reserved.
//

#import "HNLogging.h"

@implementation HNLogging

+ (BOOL)enabled {
  return YES;
}

+ (void)log:(NSString *)format, ... {
  va_list args;
  va_start(args, format);
  NSString *message = [[NSString alloc] initWithFormat:format arguments:args];
  va_end(args);
  
  if (![NSThread isMainThread]) {
    message = [NSString stringWithFormat:@"[bg] %@", message];
  }
  
  NSLog(@"%@", message);
}

@end
