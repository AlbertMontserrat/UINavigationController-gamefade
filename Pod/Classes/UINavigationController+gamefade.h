//
//  UINavigationController+gamefade.h
//  UINavigationController+gamefade
//
//  Created by Albert Montserrat on 29/07/13.
//  Copyright (c) 2013 iBoo Mobile. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface UINavigationController (gamefade)

- (void)pushFadeViewController:(UIViewController *)viewController;
- (void)pushFadeViewController:(UIViewController *)viewController duration:(CGFloat)seconds;

- (void)popFadeViewController;
- (void)popFadeViewControllerWithDuration:(CGFloat)seconds;

- (void)popFadeToRootViewController;
- (void)popFadeToRootViewControllerWithDuration:(CGFloat)seconds;

- (void)resetRootViewController:(UIViewController *)controller andPop:(BOOL)pop;

- (void)replaceCurrentViewControllerWithViewController:(UIViewController *)controller;
- (void)replaceCurrentViewControllerWithViewController:(UIViewController *)controller withDuration:(CGFloat)secs;
- (void)replaceCountViewControllers:(int)numViewControllersToReplace withViewController:(UIViewController *)controller;
- (void)replaceCountViewControllers:(int)numViewControllersToReplace withViewController:(UIViewController *)controller withDuration:(CGFloat)secs;

@end
