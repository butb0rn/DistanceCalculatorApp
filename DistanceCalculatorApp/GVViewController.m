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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)clearMiles:(id)sender {
    [self clearTexts];
}

- (IBAction)convertMilesToKilometers:(id)sender {
    if ([self.inputMiles.text isEqual:@""] || self.inputMiles.text == nil) {
        [self clearTexts];
        return;
    }
    double miles = [[self.inputMiles text] doubleValue];
    double kilometers = miles * 1.60934;
    [self.resultInKilometers setText:[NSString
                                      stringWithFormat:@"Distance in Kilometeres is: %f", kilometers]];
}

- (void)clearTexts {
    [self.inputMiles setText: @""];
    [self.resultInKilometers setText: @""];
}

@end
