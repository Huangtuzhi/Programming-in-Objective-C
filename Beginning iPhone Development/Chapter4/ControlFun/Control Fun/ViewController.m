//
//  ViewController.m
//  Control Fun
//
//  Created by titus on 2017/9/26.
//  Copyright © 2017年 timenull. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.sliderLabel.text = @"50";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) nameField: (id) sender {

}

- (IBAction) numberField: (id) sender {
}

- (IBAction) textFieldDoneEditing: (id) sender
{
    [sender resignFirstResponder];
}

- (IBAction) backgroudTap: (id) sender {
    [self.nameField resignFirstResponder];
    [self.numberField resignFirstResponder];
}

- (IBAction) sliderChanged: (UISlider *) sender {
    int process = (int)lroundf(sender.value);
    self.sliderLabel.text = [NSString stringWithFormat:@"%d", process];
}

- (IBAction) switchChanged: (UISwitch *) sender {
    BOOL setting = sender.isOn;
    [self.leftSwitch setOn: setting animated: YES];
    [self.rightSwitch setOn: setting animated: YES];
}

- (IBAction) toggleControls:(UISegmentedControl *) sender {
    if (sender.selectedSegmentIndex == 0) {
        self.leftSwitch.hidden = NO;
        self.rightSwitch.hidden = NO;
        self.doSomethingButton.hidden = YES;
    } else {
        self.leftSwitch.hidden = YES;
        self.rightSwitch.hidden = YES;
        self.doSomethingButton.hidden = NO;
    }
}

- (IBAction) buttonPressed: (UIButton *)sender {
    UIAlertController * controller = [UIAlertController alertControllerWithTitle: @"Are You sure?" message: nil preferredStyle: UIAlertControllerStyleActionSheet];
    
    UIAlertAction *yesAction = [UIAlertAction actionWithTitle: @"Yes, Iam sure" style: UIAlertActionStyleDestructive handler: ^(UIAlertAction *action) {
        NSString *msg;
        if ([self.nameField.text length] > 0) {
            msg = [NSString stringWithFormat: @"You can breathe easy, %@, everthing went OK.", self.nameField.text];
        } else {
            msg = @"You can breathe ez, everthing went ok";
        }
        
        UIAlertController *controller2 = [UIAlertController alertControllerWithTitle: @"Something was done" message: msg preferredStyle: UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Phew" style: UIAlertActionStyleCancel handler: nil];
        [controller2 addAction: cancelAction];
        [self presentViewController: controller2 animated: YES completion: nil];
    }];
    
    UIAlertAction *noAction = [UIAlertAction actionWithTitle: @"No Way!" style: UIAlertActionStyleCancel handler: nil];
    [controller addAction: yesAction];
    [controller addAction: noAction];
    
    UIPopoverPresentationController *ppc = controller.popoverPresentationController;
    if (ppc != nil) {
        ppc.sourceView = sender;
        ppc.sourceRect = sender.bounds;
    }
    [self presentViewController: controller animated: YES completion: nil];
}

@end
