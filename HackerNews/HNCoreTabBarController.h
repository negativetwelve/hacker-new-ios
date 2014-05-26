//
//  HNCoreTabBarController.h
//  HackerNews
//
//  Created by Mark Miyashita on 5/25/14.
//  Copyright (c) 2014 Mark Miyashita. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HNNavigationController.h"

@interface HNCoreTabBarController : UITabBarController

+ (HNCoreTabBarController *)activeCoreTabBarController;

- (instancetype)init;

- (void)showTopStories;

- (void)selectRecentTab;

- (HNNavigationController *)activeTabNavigationController;

@end
