//
//  ViewController.m
//  View Switcher
//
//  Created by 黄逸 on 2017/10/9.
//  Copyright © 2017年 timenull. All rights reserved.
//

#import "SwitchingViewController.h"
#import "YellowViewController.h"
#import "BlueViewController.h"

@interface SwitchingViewController ()

@property (strong, nonatomic) YellowViewController *yellowViewController;
@property (strong, nonatomic) BlueViewController *blueViewController;

@end

@implementation SwitchingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.blueViewController = [self.storyboard
                               instantiateViewControllerWithIdentifier: @"Blue"];
    self.blueViewController.view.frame = self.view.frame;
    [self switchViewFromViewController: nil toViewController: self.blueViewController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    if (!self.blueViewController.view.superview) {
        self.blueViewController = nil;
    } else {
        self.yellowViewController = nil;
    }
}

- (IBAction) switchViews: (id) sender {
    // 创建视图控制器
    if (!self.yellowViewController.view.superview) {
        if (!self.yellowViewController) {
            self.yellowViewController = [self.storyboard
               instantiateViewControllerWithIdentifier: @"Yellow"];
        }
    } else {
        if (!self.blueViewController) {
            self.blueViewController = [self.storyboard
               instantiateViewControllerWithIdentifier: @"Blue"];
        }
    }
    
    // 切换视图控制器
    
    // 声明动画块
    [UIView beginAnimations: @"Voew Flip" context: NULL];
    [UIView setAnimationDuration: 0.4];
    [UIView setAnimationCurve: UIViewAnimationCurveEaseInOut];
    
    if (!self.yellowViewController.view.superview) {
        [UIView setAnimationTransition: UIViewAnimationTransitionFlipFromRight forView: self.view cache: YES];
        self.yellowViewController.view.frame = self.view.frame;
        [self switchViewFromViewController: self.blueViewController toViewController: self.yellowViewController];
    } else {
        [UIView setAnimationTransition: UIViewAnimationTransitionFlipFromLeft forView: self.view cache: YES];
        self.blueViewController.view.frame = self.view.frame;
        [self switchViewFromViewController: self.yellowViewController toViewController: self.blueViewController];
    }
    [UIView commitAnimations];
}

- (void) switchViewFromViewController: (UIViewController *) fromVC
                     toViewController: (UIViewController *) toVC {
    if (fromVC != nil) {
        [fromVC willMoveToParentViewController: nil];
        [fromVC.view removeFromSuperview];
        [fromVC removeFromParentViewController];
    }
    
    if (toVC != nil) {
        [self addChildViewController: toVC];
        [self.view insertSubview: toVC.view atIndex: 0];
        [toVC didMoveToParentViewController: self];
    }
}

@end
