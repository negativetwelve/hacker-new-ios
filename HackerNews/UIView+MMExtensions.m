//
//  UIView+MMExtensions.m
//  HackerNews
//
//  Created by Mark Miyashita on 9/28/14.
//  Copyright (c) 2014 Mark Miyashita. All rights reserved.
//

#import "UIView+MMExtensions.h"

@implementation UIView (MMExtensions)

- (UIView *)mm_addToSuperview:(UIView *)view {
  // Add some check to make sure view is not nil
  [view addSubview:self];
  return self;
}


@end
