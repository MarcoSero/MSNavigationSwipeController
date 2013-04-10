//
//  MSNavigationSwipeController.m
//  MSNavigationSwipeControllerDemo
//
//  Created by Marco Sero on 08/04/13.
//  Copyright (c) 2013 Marco Sero. All rights reserved.
//

#import "MSNavigationSwipeController.h"

@implementation MSNavigationSwipeController

- (void)viewDidLoad
{
  [super viewDidLoad];
  [self addSwipeGestureRecognizer];
}


#pragma mark - Swipe gesture

- (void)addSwipeGestureRecognizer
{
  UISwipeGestureRecognizer *swipeGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeRecognized:)];
  [self.view addGestureRecognizer:swipeGestureRecognizer];
  _canSwipeRightToGoBack = YES;
}

- (void)swipeRecognized:(UISwipeGestureRecognizer *)gestureRecognizer
{
  if (gestureRecognizer.state == UIGestureRecognizerStateEnded &&
    gestureRecognizer.direction & UISwipeGestureRecognizerDirectionRight &&
    _canSwipeRightToGoBack) {
    [self popViewControllerAnimated:YES];
  }
}


@end
