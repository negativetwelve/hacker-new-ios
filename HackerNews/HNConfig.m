//
//  HNConfig.m
//  HackerNews
//
//  Created by Mark Miyashita on 5/25/14.
//  Copyright (c) 2014 Mark Miyashita. All rights reserved.
//

#import "HNConfig.h"

#import "HNBlockTypes.h"


@implementation HNConfig

+ (instancetype)defaultConfig {
  static HNConfig *sharedInstance;
  
  DO_ONCE(^{
    sharedInstance = [[HNConfig alloc] init];
  });
  
  return sharedInstance;
}

@end
