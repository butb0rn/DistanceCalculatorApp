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

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.model = [[GVModel alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clearMiles:(id)sender {
    [self.inputMiles setText: @""];
}

- (IBAction)convertToKilometers:(id)sender {
}
@end
