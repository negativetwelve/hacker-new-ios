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
#import "HNCoreTabBarController.h"

#import "HNServerAPIClient.h"
#import "HNAppDelegate.h"
#import "HNBlockTypes.h"


@interface HNRootViewController()

@property (nonatomic, strong) HNServerAPIClient *APIClient;
@property (nonatomic, strong) UIViewController *currentViewController;

@end


@implementation HNRootViewController

#pragma mark - View

- (void)viewDidLoad {
  [super viewDidLoad];

  UIViewController *launchingViewController = [self newInitialViewController];
  
  [self showInitialViewController:launchingViewController];
}

- (UIViewController *)newInitialViewController {
  return [[HNCoreTabBarController alloc] init];
}

- (HNViewController *)newLoginViewController {
  return [[HNLoginViewController alloc] init];
}

- (void)showInitialViewController:(UIViewController *)initialViewController {
  [self addChildViewController:initialViewController];
  [self.view addSubview:initialViewController.view];
  self.currentViewController = initialViewController;
}

#pragma mark - API

- (HNServerAPIClient *)APIClient {
  DO_ONCE(^{
    _APIClient = [[HNAppDelegate instance] APIClient];
  });
  return _APIClient;
}

@end
