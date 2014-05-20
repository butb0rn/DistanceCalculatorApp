//
//  GVViewController.h
//  DistanceCalculatorApp
//
//  Created by Ehsan Valizadeh on 5/20/14.
//  Copyright (c) 2014 Ehsan Valizadeh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GVModel.h"

@interface GVViewController : UIViewController
@property (strong, nonatomic) GVModel *model;
@property (weak, nonatomic) IBOutlet UITextField *inputMiles;
@property (weak, nonatomic) IBOutlet UIButton *convertToKilometers;
@property (weak, nonatomic) IBOutlet UIButton *clearButton;
@property (weak, nonatomic) IBOutlet UILabel *resultInKilometers;
- (IBAction)clearMiles:(id)sender;
- (IBAction)convertToKilometers:(id)sender;

@end
