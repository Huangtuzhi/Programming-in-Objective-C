//
//  DataPickerViewController.m
//  Pickers
//
//  Created by 黄逸 on 2017/10/11.
//  Copyright © 2017年 timenull. All rights reserved.
//

#import "DataPickerViewController.h"

@interface DataPickerViewController ()

@property (strong, nonatomic) IBOutlet UIDatePicker *dataPicker;

@end

@implementation DataPickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDate *now = [NSDate date];
    [self.dataPicker setDate: now animated: NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction) buttonPressed: (id)sender {
    NSData *date = self.dataPicker.date;
    NSString *message = [[NSString alloc] initWithFormat: @"The date and time you selected is %@", date];
    UIAlertController *alert =
    [UIAlertController alertControllerWithTitle: @"Date and Time selected" message: message preferredStyle: UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle: @"That's so true!" style: UIAlertActionStyleDefault handler: nil];
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
