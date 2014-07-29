//
//  HNCoreTabBarController.m
//  HackerNews
//
//  Created by Mark Miyashita on 5/25/14.
//  Copyright (c) 2014 Mark Miyashita. All rights reserved.
//

#import "HNAppDelegate.h"
#import "HNCoreTabBarController.h"
#import "HNCoreNavigationItemController.h"

#import "HNViewController.h"


@interface HNCoreTabBarController () <UITabBarControllerDelegate>

@property (nonatomic) HNCoreNavigationItemController *navItemController;

@end


@implementation HNCoreTabBarController

+ (HNCoreTabBarController *)activeCoreTabBarController {
  UIViewController *rootViewController = [HNAppDelegate instance].window.rootViewController;
  UIViewController *tabBarController = rootViewController.childViewControllers[0];
  return (HNCoreTabBarController *)tabBarController;
}

- (instancetype)init {
  return [super init];
}

- (UINavigationController *)activeTabNavigationController {
  return [self.viewControllers objectAtIndex:self.selectedIndex];
}

- (void)showTopStories {
  NSLog(@"show top stories");
  [self setSelectedIndex:0];
}

- (void)selectRecentTab {
  NSLog(@"select recent tab called");
  [self setSelectedIndex:1];
}

@end
