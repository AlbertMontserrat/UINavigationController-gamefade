//
//  UIViewController.m
//  UINavigationControllerGameFade
//
//  Created by Albert M on 05/08/2015.
//  Copyright (c) 2014 Albert M. All rights reserved.
//

#import "SampleViewController.h"
#import "UINavigationController+gamefade.h"

@interface SampleViewController ()

@end

@implementation SampleViewController

-(IBAction)push:(id)sender{
    SampleViewController *sample = [self.storyboard instantiateViewControllerWithIdentifier:@"sampleviewcontroller"];
    sample.num = self.num + 1;
    [self.navigationController pushFadeViewController:sample];
}

-(IBAction)pop:(id)sender{
    [self.navigationController popFadeViewController];
}

-(IBAction)replace:(id)sender{
    SampleViewController *sample = [self.storyboard instantiateViewControllerWithIdentifier:@"sampleviewcontroller"];
    sample.num = self.num + 1;
    [self.navigationController replaceCurrentViewControllerWithViewController:sample];
}

-(IBAction)replace2:(id)sender{
    SampleViewController *sample = [self.storyboard instantiateViewControllerWithIdentifier:@"sampleviewcontroller"];
    sample.num = self.num + 1;
    [self.navigationController replaceCountViewControllers:2 withViewController:sample];
}

-(IBAction)reset:(id)sender{
    SampleViewController *sample = [self.storyboard instantiateViewControllerWithIdentifier:@"sampleviewcontroller"];
    sample.num = self.num + 1;
    [self.navigationController resetRootViewController:sample andPop:YES];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

-(void)viewDidAppear:(BOOL)animated{
    label.text = [NSString stringWithFormat:@"%ld",(long)self.num];
    
    NSInteger currentControllerIndex = [self.navigationController.viewControllers indexOfObject:self];
    
    if(currentControllerIndex == 0){
        [btnPop setEnabled:NO];
    }
    
    if(currentControllerIndex < 1){
        [btnReplace2 setEnabled:NO];
    }
    
}


-(void)viewWillAppear:(BOOL)animated{
    [self updateAllControllersLabel];
}

-(void)viewWillDisappear:(BOOL)animated{
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
}

-(void)updateAllControllersLabel{
    
    NSMutableArray *mut = [NSMutableArray array];
    NSArray *temp = [NSArray arrayWithArray:self.navigationController.viewControllers];
    
    for(SampleViewController *sample in temp){
        [mut addObject:[NSString stringWithFormat:@"%ld",(long)sample.num]];
    }
    
    labelAllControllers.text = [mut componentsJoinedByString:@" - "];
    
    [self performSelector:@selector(updateAllControllersLabel) withObject:nil afterDelay:0.1];
}

@end
