//
//  LSViewController.h
//  CrystalBall
//
//  Created by Luke on 27/04/2014.
//  Copyright (c) 2014 Ceenos. All rights reserved.
//

#import <UIKit/UIKit.h>

// specify forward declaration to instruct the class that there is is a class called LSCrystalBall but we will we be importing it within our implementation (instead of #import as it is not good practice to import local classes within the interface_
@class LSCrystalBall;

@interface LSViewController : UIViewController

// reference and connect to outlet in IB
// verify control connected in gutter
@property (strong, nonatomic) IBOutlet UILabel *predictionLabel;

// add property so have getter setter access in all methods (avoid scope issues)
// replace 'predictions' property with 'CRYSTALBALL' custom class property
//@property (strong, nonatomic) NSArray *predictions;
// recognises LSCrystalBall due to forward declaration
// specify property name crystalBall so can use in implementation
@property (strong, nonatomic) LSCrystalBall *crystalBall;

// REMOVED BUTTON AS REPLACED WITH TOUCH EVENT
//// verify control connected in gutter
//- (IBAction)buttonPressed;

@end
