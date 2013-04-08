# MSNavigationSwipeController

Subclass of `UINavigationController` to add *swipe right to go back* gesture recognizer like most apps (Facebook, Tweetbot) already do.

Just a couple of lines of code that are gonna improve the user experience of every app (especially for iPhone 5 users!).



## Get it ready

Add it with CocoaPods

    pod 'MSNavigationSwipeController'

and use `MSNavigationSwipeController` as your navigation controller.

## How it works

    - (void)addSwipeGestureRecognizer
    {
      UISwipeGestureRecognizer *swipeGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeRecognized:)];
      [self.view addGestureRecognizer:swipeGestureRecognizer];
    }
    
    - (void)swipeRecognized:(UISwipeGestureRecognizer *)gestureRecognizer
    {
      if (gestureRecognizer.state == UIGestureRecognizerStateEnded &&
        gestureRecognizer.direction & UISwipeGestureRecognizerDirectionRight) {
        [self popViewControllerAnimated:YES];
      }
    }

That's it, really!

You can also temporarily disable it with the property `canSwipeRightToGoBack`.


## Credits

Freely inspired by Facebook, Tweetbot and many other apps.

## Contact

Marco Sero

- http://www.marcosero.com
- http://twitter.com/marcosero 
- marco@marcosero.com

## License

MSNavigationSwipeController is available under the MIT license. See the LICENSE file for more info.
