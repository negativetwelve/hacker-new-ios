//
//  HNTopStoriesViewController.m
//  HackerNews
//
//  Created by Mark Miyashita on 5/25/14.
//  Copyright (c) 2014 Mark Miyashita. All rights reserved.
//

#import "HNTopStoriesViewController.h"
#import "HNTopStoriesView.h"


@interface HNTopStoriesViewController ()

@property (nonatomic) HNTopStoriesView *view;

@end


@implementation HNTopStoriesViewController

- (void)loadView {
  self.view = [[HNTopStoriesView alloc] init];
}

@end
