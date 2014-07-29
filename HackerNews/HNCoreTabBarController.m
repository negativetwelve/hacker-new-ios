//
//  HNCoreTabBarController.m
//  HackerNews
//
//  Created by Mark Miyashita on 5/25/14.
//  Copyright (c) 2014 Mark Miyashita. All rights reserved.
//

#import "HNCoreTabBarController.h"
#import "HNCoreNavigationItemController.h"

#import "HNViewController.h"


@interface HNCoreTabBarController () <UITabBarControllerDelegate>

@property (nonatomic) HNCoreNavigationItemController *navItemController;

@end


@implementation HNCoreTabBarController

+ (HNCoreTabBarController *)activeCoreTabBarController {
  HNViewController *rootViewController = [[UIApplication sharedApplication] keyWindow].rootViewController;
//  HNViewController *tabBarController = [rootViewController.childViewController
  return nil;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
    // Custom initialization
  }
  return self;
}

- (void)viewDidLoad {
  [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (void)selectRecentTab {
  NSLog(@"select recent tab called");
}

@end
