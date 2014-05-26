//
//  HNAppDelegate.h
//  HackerNews
//
//  Created by Mark Miyashita on 5/25/14.
//  Copyright (c) 2014 Mark Miyashita. All rights reserved.
//

#import <UIKit/UIKit.h>


@class HNConfig;
@class HNServerAPIClient;


@interface HNAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong, readonly) HNConfig *config;
@property (nonatomic, strong, readonly) HNServerAPIClient *APIClient;

+ (HNAppDelegate *)instance;

@end
