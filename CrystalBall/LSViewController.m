//
//  LSViewController.m
//  CrystalBall
//
//  Created by Luke on 27/04/2014.
//  Copyright (c) 2014 Ceenos. All rights reserved.
//

#import "LSViewController.h"

@interface LSViewController ()

@end

@implementation LSViewController

// loads frames from main.storyboard
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

}

// method executes once the view appears after viewDidLoad
- (void)viewDidAppear:(BOOL)animated
{
    // refer to parent class (super)
    // super class is UIViewController
    [super viewDidAppear:animated];
    
    // store existing frame (preserve height and width) before modify
    // only want to change x and y
    CGRect frame = self.predictionLabel.frame;
    
     // method in lifecycle of view controller
     // modify prediction label (location and size)
     // self refers to instance of view controller / current class. property belongs to current class (use dot syntax)
     // frame is property of label control
     // UILabel subclass of UIView so it inherits its properties
    // only changing Y of predictionLabel but other dims stay in tact
     self.predictionLabel.frame = CGRectMake(frame.origin.x, 170, frame.size.width, frame.size.height);
    
     self.predictions = [[NSArray alloc] initWithObjects:
                         @"It is certain",
                         @"It is decidedly certain",
                         @"It is doubtful", nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
    
    // create variable called NSArray of predictions
    // allocate in memory and init with data Strings
    
    // moved as declared 'predictions' @PROPERTY now so can access in all methods (i.e. viewDidAppear)
//    NSArray *predictions = [[NSArray alloc] initWithObjects:@"It is certain", @"It is decidedly certain", @"It is doubtful", nil];
    
    //NSLog(@"button pressed"); // displays in console
    
    // self refers to UILabel instance of view controller.
    // change text when pressed. use 'text' property
    //self.predictionLabel.text = @"Yes";
    
    // use predictions array
    // access elements in it
    // send it message objectAtIndex
    // so when click button it will set to index 0
    // updated to refer to the property of predictions (not the instance variable itself, so change to 'self. '
    self.predictionLabel.text = [self.predictions objectAtIndex:1];

}
@end
