//
//  HNTopStoriesView.m
//  HackerNews
//
//  Created by Mark Miyashita on 9/28/14.
//  Copyright (c) 2014 Mark Miyashita. All rights reserved.
//

#import "HNTopStoriesView.h"


@interface HNTopStoriesView ()

@property (nonatomic) UIView *sampleView;
@property (nonatomic) UIView *secondView;

@end


@implementation HNTopStoriesView

- (instancetype)initWithFrame:(CGRect)frame {
  self = [super initWithFrame:frame];
  if (self) {
    [self createSubviews];
    [self setUpActions];
    [self updateConstraints];
  }
  return self;
}

#pragma mark - View Hierarchy

- (void)createSubviews {
  _sampleView = [({
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor blueColor];
    view;
  }) mm_addToSuperview:self];
  
  _secondView = [({
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor redColor];
    view;
  }) mm_addToSuperview:self];
}

- (void)setUpActions {
  // Here is where you set up buttons taps and gesture recognizers.
}

- (void)updateConstraints {
  [self.sampleView mas_makeConstraints:^(MASConstraintMaker *make) {
    make.top.equalTo(@100);
    make.leading.equalTo(@10);
    make.trailing.equalTo(@(-10));
    make.height.equalTo(@100);
  }];
  
  [self.secondView mas_makeConstraints:^(MASConstraintMaker *make) {
    make.top.equalTo(self.sampleView.mas_bottom).with.offset(10);
    make.bottom.equalTo(@(-10));
    make.leading.equalTo(@10);
    make.trailing.equalTo(@(-10));
  }];
  
  [super updateConstraints];
}

@end
