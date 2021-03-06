//
//  GVViewController.h
//  DistanceCalculatorApp
//
//  Created by Ehsan Valizadeh on 5/20/14.
//  Copyright (c) 2014 Ehsan Valizadeh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GVViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *inputMiles;
@property (weak, nonatomic) IBOutlet UIButton *clearButton;
@property (weak, nonatomic) IBOutlet UILabel *resultInKilometers;

- (IBAction)clearMiles:(id)sender;
- (IBAction)convertMilesToKilometers:(id)sender;


@end
