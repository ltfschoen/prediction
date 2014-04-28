//
//  LSViewController.h
//  CrystalBall
//
//  Created by Luke on 27/04/2014.
//  Copyright (c) 2014 Ceenos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LSViewController : UIViewController

// reference and connect to outlet in IB
// verify control connected in gutter
@property (strong, nonatomic) IBOutlet UILabel *predictionLabel;

// add property so have getter setter access in all methods (avoid scope issues)
@property (strong, nonatomic) NSArray *predictions;

// verify control connected in gutter
- (IBAction)buttonPressed;

@end
