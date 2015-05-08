//
//  UIViewController.h
//  UINavigationControllerGameFade
//
//  Created by Albert M on 05/08/2015.
//  Copyright (c) 2014 Albert M. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SampleViewController : UIViewController{
    IBOutlet UILabel *label;
    IBOutlet UILabel *labelAllControllers;
    IBOutlet UIButton *btnPush;
    IBOutlet UIButton *btnPop;
    IBOutlet UIButton *btnReset;
    IBOutlet UIButton *btnReplace;
    IBOutlet UIButton *btnReplace2;
}

@property(nonatomic,assign) NSInteger num;

@end
