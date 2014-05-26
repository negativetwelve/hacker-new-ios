//
//  HNRootViewController.m
//  HackerNews
//
//  Created by Mark Miyashita on 5/25/14.
//  Copyright (c) 2014 Mark Miyashita. All rights reserved.
//

#import "HNRootViewController.h"
#import "HNTopStoriesViewController.h"
#import "HNLoginViewController.h"


@implementation HNRootViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  BOOL loggedIn = false;
  HNViewController *launchingViewController = (loggedIn) ? [self newInitialViewController] : [self newLoginViewController];
  
  [self showInitialViewController:launchingViewController];
}

- (HNViewController *)newInitialViewController {
  return [[HNTopStoriesViewController alloc] init];
}

- (HNViewController *)newLoginViewController {
  return [[HNLoginViewController alloc] init];
}

- (void)showInitialViewController:(HNViewController *)initialViewController {
  [self addChildViewController:initialViewController];
  [self.view addSubview:initialViewController.view];
  [initialViewController.view constrainToFillContainer];
  self.currentViewController = initialViewController;
}

#pragma mark - API

- (

@end
