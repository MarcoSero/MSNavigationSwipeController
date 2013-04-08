//
//  MSNavigationSwipeController.m
//  MSNavigationSwipeControllerDemo
//
//  Created by Marco Sero on 08/04/13.
//  Copyright (c) 2013 Marco Sero. All rights reserved.
//

#import "MSNavigationSwipeController.h"

@implementation MSNavigationSwipeController

- (id)init
{
  self = [super init];
  if (self) {
    [self addSwipeGestureRecognizer];
    return self;
  }
  return nil;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
  self = [super initWithCoder:aDecoder];
  if (self) {
    [self addSwipeGestureRecognizer];
    return self;
  }
  return nil;
}

- (id)initWithNavigationBarClass:(Class)navigationBarClass toolbarClass:(Class)toolbarClass
{
  self = [super initWithNavigationBarClass:navigationBarClass toolbarClass:toolbarClass];
  if (self) {
    [self addSwipeGestureRecognizer];
    return self;
  }
  return nil;
}

- (id)initWithRootViewController:(UIViewController *)rootViewController
{
  self = [super initWithRootViewController:rootViewController];
  if (self) {
    [self addSwipeGestureRecognizer];
    return self;
  }
  return nil;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
    [self addSwipeGestureRecognizer];
    return self;
  }
  return nil;
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
