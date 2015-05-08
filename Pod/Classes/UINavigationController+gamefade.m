//
//  UINavigationController+gamefade.m
//  UINavigationController+gamefade
//
//  Created by Albert Montserrat on 29/07/13.
//  Copyright (c) 2013 Albert Montserrat. All rights reserved.
//

#import "UINavigationController+gamefade.h"

@implementation UINavigationController (gamefade)

#pragma mark - Push

- (void)pushFadeViewController:(UIViewController *)viewController{
    [self pushFadeViewController:viewController duration:0.3f];
}

- (void)pushFadeViewController:(UIViewController *)viewController duration:(CGFloat)seconds{
    CATransition *transition = [CATransition animation];
    transition.duration = seconds;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionFade;
    [self.view.layer addAnimation:transition forKey:nil];
    
    [self pushViewController:viewController animated:NO];
}

#pragma mark - Pop

- (void)popFadeViewController{
    [self popFadeViewControllerWithDuration:0.3f];
}

- (void)popFadeViewControllerWithDuration:(CGFloat)seconds{
    CATransition *transition = [CATransition animation];
    transition.duration = seconds;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionFade;
    [self.view.layer addAnimation:transition forKey:nil];
    
    [self popViewControllerAnimated:NO];
}

- (void)popFadeToRootViewController{
    [self popFadeToRootViewControllerWithDuration:0.3f];
}

- (void)popFadeToRootViewControllerWithDuration:(CGFloat)seconds{
    CATransition *transition = [CATransition animation];
    transition.duration = seconds;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionFade;
    [self.view.layer addAnimation:transition forKey:nil];
    
    [self popToRootViewControllerAnimated:NO];
}

#pragma mark - Reset

- (void)resetRootViewController:(UIViewController *)controller andPop:(BOOL)pop{
    NSMutableArray *controllers = [NSMutableArray arrayWithArray:self.viewControllers];
    [controllers insertObject:controller atIndex:0];
    [self setViewControllers:controllers animated:NO];
    if(pop)
        [self popFadeToRootViewController];
}

#pragma mark - Replace

- (void)replaceCurrentViewControllerWithViewController:(UIViewController *)controller{
    [self replaceCountViewControllers:1 withViewController:controller withDuration:0.3];
}

-(void)replaceCurrentViewControllerWithViewController:(UIViewController *)controller withDuration:(CGFloat)seconds{
    [self replaceCountViewControllers:1 withViewController:controller withDuration:seconds];
}

- (void)replaceCountViewControllers:(int)numViewControllersToReplace withViewController:(UIViewController *)controller{
    [self replaceCountViewControllers:numViewControllersToReplace withViewController:controller withDuration:0.3];
    
}

-(void)replaceCountViewControllers:(int)numViewControllersToReplace withViewController:(UIViewController *)controller withDuration:(CGFloat)seconds{
    
    NSMutableArray *controllers = [NSMutableArray arrayWithArray:self.viewControllers];
    
    int controllerIndex = (int)controllers.count-numViewControllersToReplace;
    if(controllerIndex < 0)
        controllerIndex = 0;
    
    [controllers insertObject:controller atIndex:controllerIndex];
    [self setViewControllers:controllers animated:NO];
    
    CATransition *transition = [CATransition animation];
    transition.duration = seconds;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionFade;
    [self.view.layer addAnimation:transition forKey:nil];
    
    [self popToViewController:controller animated:NO];
    
}

@end
