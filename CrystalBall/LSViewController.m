//
//  LSViewController.m
//  CrystalBall
//
//  Created by Luke on 27/04/2014.
//  Copyright (c) 2014 Ceenos. All rights reserved.
//

#import "LSViewController.h"

// import as only forward declaration used in header
#import "LSCrystalBall.h"

@interface LSViewController ()

@end

@implementation LSViewController

// loads frames from main.storyboard
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

// SHIFTED ALL INTERFACE CODE TO MAIN.STORYBOARD TO USE AUTOLAYOUT CONSTRAINTS
//    // create image object and pass image object to initWithImage
//    // UIImage class holds image data
//    // use convenience constructor allocs and inits behind scenes and returns image object
//    UIImage *backgroundImage = [UIImage imageNamed:@"background"];
//    
//    // insert UIImageView for background image object to be added to main view in storyboard
//    UIImageView *imageView = [[UIImageView alloc] initWithImage:backgroundImage];
//    
//    // add view to View hierarchy and display it on the screen
//    // self is instance of LSViewController. view is property of LSViewController
//    // do not use addSubview as want it to be at back of all view layers
//    //[self.view addSubview:imageView];
//    [self.view insertSubview:imageView atIndex:0];
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
    
     // COPY OF DATA MOVED TO 'MODEL' CLASS LSCRYSTALBALL
     //self.predictions = [[NSArray alloc] initWithObjects:
     //    @"It is certain",
     //    @"It is decidedly certain",
     //    @"It is doubtful", nil];
    // REPLACE self.predictions declaration with below (as we deleted that property and moved data to model)
    
    // alloc and init the crystalBall property
    // import LSCrystalBall as we only used forward declaration
    self.crystalBall = [[LSCrystalBall alloc] init];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
    
    // create local random variable and assign length of array
    // DELETE AS MOVED TO 'MODEL'
    //int random = arc4random_uniform(self.predictions.count);
    
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
    // pass the generated random number
    //REPLACE BELOW SINCE 'MODEL' CLASS CREATED FOR DATA
    //self.predictionLabel.text = [self.predictions objectAtIndex:random];
    // assign to crystalBall property and assign it to the randomPrediction message
    self.predictionLabel.text = [self.crystalBall randomPrediction];

}
@end
