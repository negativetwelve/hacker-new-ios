//
//  HNCoreNavigationItemController.h
//  HackerNews
//
//  Created by Mark Miyashita on 5/25/14.
//  Copyright (c) 2014 Mark Miyashita. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol HNCoreNavigationItemControllerDelegate;


@interface HNCoreNavigationItemController : NSObject

@property (nonatomic, weak) id<HNCoreNavigationItemControllerDelegate> delegate;

- (instancetype)initWithNavigationControllers:(NSArray *)navControllers delegate:(id<HNCoreNavigationItemControllerDelegate>)delegate;

@end


@protocol HNCoreNavigationItemControllerDelegate <NSObject>

@optional
- (void)didTapNavigationBar:(UITapGestureRecognizer *)gestureRecognizer;

@end
