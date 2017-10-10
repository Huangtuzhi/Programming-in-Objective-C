//
//  BlueViewController.m
//  View Switcher
//
//  Created by 黄逸 on 2017/10/9.
//  Copyright © 2017年 timenull. All rights reserved.
//

#import "BlueViewController.h"

@interface BlueViewController ()

@end

@implementation BlueViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) blueButtonPressed {
    UIAlertController *alert = [UIAlertController
        alertControllerWithTitle: @"Blue View Button Pressed" message: @"Your pressed the button on the blue view" preferredStyle: UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle: @"Yep, I did" style:UIAlertActionStyleDefault handler: nil];
    [alert addAction: action];
    [self presentViewController: alert animated: YES completion: nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
