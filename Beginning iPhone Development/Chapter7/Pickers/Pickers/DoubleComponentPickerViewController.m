//
//  DoubleComponentPickerViewController.m
//  Pickers
//
//  Created by 黄逸 on 2017/10/11.
//  Copyright © 2017年 timenull. All rights reserved.
//

#import "DoubleComponentPickerViewController.h"

#define kFillingComponent 0
#define kBreadComponent 1

@interface DoubleComponentPickerViewController ()

@property (weak, nonatomic) IBOutlet UIPickerView *doublePicker;
@property (strong, nonatomic) NSDictionary *stateZips;
@property (strong, nonatomic) NSArray *fillingTypes; //states
@property (strong, nonatomic) NSArray *breadTypes; //zips

@end

@implementation DoubleComponentPickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSBundle *bundle = [NSBundle mainBundle];
    
    NSURL *plistURL = [bundle URLForResource: @"statedictionary" withExtension: @"plist"];
    self.stateZips = [NSDictionary dictionaryWithContentsOfURL: plistURL];
    
    NSArray* allStates = [self.stateZips allKeys];
    
//    NSLog(@"bundle content: %@", allStates);
    NSArray *sortedStates = [allStates sortedArrayUsingSelector: @selector(compare:)];
    self.fillingTypes = sortedStates;
    
    NSString *selectedState = self.fillingTypes[0];
    self.breadTypes = self.stateZips[selectedState];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    NSInteger fillingRow = [self.doublePicker selectedRowInComponent: kFillingComponent];
    NSInteger breadRow = [self.doublePicker selectedRowInComponent: kBreadComponent];

    NSString *state = self.fillingTypes[fillingRow];
    NSString *zip = self.breadTypes[breadRow];
    
    NSString *title = [[NSString alloc] initWithFormat: @"You selected zip code is %@", zip];
    NSString *message = [[NSString alloc] initWithFormat:
                          @"%@ is in %@", zip, state];
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle: title message: message preferredStyle: UIAlertControllerStyleAlert];
    
    UIAlertAction *action = [UIAlertAction actionWithTitle: @"OK" style: UIAlertActionStyleDefault handler: nil];
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

// 委托方法

#pragma mark
#pragma mark Picker Data Source Methods
- (NSInteger) numberOfComponentsInPickerView: (UIPickerView *)pickerView {
    return 2;
}

- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (component == kBreadComponent) {
        return [self.breadTypes count];
    } else {
        return [self.fillingTypes count];
    }
}

#pragma mark Picker Delegate Methods
- (NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (component == kBreadComponent) {
        return self.breadTypes[row];
    } else {
        return self.fillingTypes[row];
    }
}

- (void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    if (component == kFillingComponent) {
        NSString* selectedState = self.fillingTypes[row];
        self.breadTypes = self.stateZips[selectedState];
        [self.doublePicker reloadComponent: kBreadComponent];
        [self.doublePicker selectRow: 0 inComponent: kBreadComponent animated: YES];
    }
}

- (CGFloat) pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component {
    CGFloat pickerWidth = pickerView.bounds.size.width;
    if (component == kFillingComponent) {
        return pickerWidth / 3;
    } else {
        return 2 * pickerWidth / 3;
    }
}

@end
