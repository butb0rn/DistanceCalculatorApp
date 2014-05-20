//
//  GVViewController.m
//  DistanceCalculatorApp
//
//  Created by Ehsan Valizadeh on 5/20/14.
//  Copyright (c) 2014 Ehsan Valizadeh. All rights reserved.
//

#import "GVViewController.h"

@interface GVViewController ()
@end

@implementation GVViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.resultInKilometers setText: @""];
    self.inputMiles.clearButtonMode = UITextFieldViewModeWhileEditing; // add clear button;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)clearMiles:(id)sender {
    [self clearTexts];
    [self.inputMiles resignFirstResponder];
}

- (IBAction)convertMilesToKilometers:(id)sender {
    [self.inputMiles resignFirstResponder];
    if ([self isMileNotEntered:self.inputMiles.text]) {
        [self clearTexts];
        return;
    }
    [self.resultInKilometers setText:[NSString
                                      stringWithFormat:@"Distance in Kilometeres is: %f",
                                      [self milesToKilometers:self.inputMiles.text]]];
}

- (void)clearTexts {
    [self.inputMiles setText: @""];
    [self.resultInKilometers setText: @""];
}

- (BOOL)isMileNotEntered:(NSString*)mileText {
    NSScanner* scanner = [NSScanner scannerWithString:mileText];
    BOOL isNumeric = [scanner scanDouble:NULL] && [scanner isAtEnd];
    return !isNumeric || [mileText isEqual:@""] || mileText == nil;
}

-(double)milesToKilometers:(NSString*)miles {
    double milesDoubleValue = [miles doubleValue];
    return milesDoubleValue * 1.60934;
}

@end
