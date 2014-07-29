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

#import "HNNavigationBar.h"

#import "HNTopStoriesViewController.h"
#import "HNRecentStoriesViewController.h"


@interface HNCoreTabBarController () <
  UITabBarControllerDelegate,
  UINavigationControllerDelegate,
  HNCoreNavigationItemControllerDelegate
>

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

- (void)viewDidLoad {
  [super viewDidLoad];
  
  self.delegate = self;
  // TODO: change color
  self.tabBar.tintColor = [UIColor grayColor];
  self.tabBar.translucent = NO;
  
  self.viewControllers = ({
    NSArray *titles = @[
                        NSLocalizedString(@"Top", HNNoLocalizationComment),
                        NSLocalizedString(@"Recent", HNNoLocalizationComment)
                        ];
    
    HNTopStoriesViewController *topStoriesViewController = [[HNTopStoriesViewController alloc] init];
    HNRecentStoriesViewController *recentStoriesViewController = [[HNRecentStoriesViewController alloc] init];
    NSArray *rootViewControllers = @[
                                     topStoriesViewController,
                                     recentStoriesViewController
                                     ];
    
    NSMutableArray *viewControllers = [NSMutableArray arrayWithCapacity:2];
    
    for (NSInteger i = 0; i < [rootViewControllers count]; i++) {
      UINavigationController *navigationController = [[UINavigationController alloc] initWithNavigationBarClass:[HNNavigationBar class] toolbarClass:nil];
      navigationController.delegate = self;
      navigationController.tabBarItem = [[UITabBarItem alloc] initWithTitle:titles[i] image:nil tag:i];
      navigationController.viewControllers = @[ rootViewControllers[i] ];
      [viewControllers addObject:navigationController];
    }
    
    viewControllers;
  });
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
