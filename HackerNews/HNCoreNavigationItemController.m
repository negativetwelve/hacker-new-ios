//
//  HNCoreNavigationItemController.m
//  HackerNews
//
//  Created by Mark Miyashita on 5/25/14.
//  Copyright (c) 2014 Mark Miyashita. All rights reserved.
//

#import "HNCoreNavigationItemController.h"
#import "HNNavigationController.h"

#import "HNServerAPIClient.h"
#import "HNAppDelegate.h"


@interface HNCoreNavigationItemController() <UIGestureRecognizerDelegate>

@property (nonatomic, readonly) HNServerAPIClient *APIClient;
@property (nonatomic) NSArray *navControllers;

@end


@implementation HNCoreNavigationItemController

#pragma mark - Initialization

- (instancetype)initWithNavigationControllers:(NSArray *)navControllers delegate:(id<HNCoreNavigationItemControllerDelegate>)delegate {
  self = [super init];
  if (self) {
    _navControllers = navControllers;
    _delegate = delegate;
    _APIClient = [[HNAppDelegate instance] APIClient];
    
    for (HNNavigationController *navController in navControllers) {
      [navController.navigationBar addGestureRecognizer:({UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self.delegate action:@selector(didTapNavigationBar:)];
        recognizer.delegate = self;
        recognizer;
      })];
    }
  }
  return self;
}

@end
