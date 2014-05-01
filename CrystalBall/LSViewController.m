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
    
    // setup animation images array for background. initialize with UIImage objects using convenience constructor to specify name of images forming motion picture animation
    self.backgroundImageView.animationImages = [[NSArray alloc] initWithObjects:
                                                [UIImage imageNamed:@"CB00001"],
                                                [UIImage imageNamed:@"CB00003"],
                                                [UIImage imageNamed:@"CB00004"],
                                                [UIImage imageNamed:@"CB00005"],
                                                [UIImage imageNamed:@"CB00006"],
                                                [UIImage imageNamed:@"CB00007"],
                                                [UIImage imageNamed:@"CB00008"],
                                                [UIImage imageNamed:@"CB00009"],
                                                [UIImage imageNamed:@"CB00010"],
                                                [UIImage imageNamed:@"CB00011"],
                                                [UIImage imageNamed:@"CB00012"],
                                                [UIImage imageNamed:@"CB00013"],
                                                [UIImage imageNamed:@"CB00014"],
                                                [UIImage imageNamed:@"CB00015"],
                                                [UIImage imageNamed:@"CB00016"],
                                                [UIImage imageNamed:@"CB00017"],
                                                [UIImage imageNamed:@"CB00018"],
                                                [UIImage imageNamed:@"CB00019"],
                                                [UIImage imageNamed:@"CB00020"],
                                                [UIImage imageNamed:@"CB00021"],
                                                [UIImage imageNamed:@"CB00022"],
                                                [UIImage imageNamed:@"CB00023"],
                                                [UIImage imageNamed:@"CB00024"],
                                                [UIImage imageNamed:@"CB00025"],
                                                [UIImage imageNamed:@"CB00026"],
                                                [UIImage imageNamed:@"CB00027"],
                                                [UIImage imageNamed:@"CB00028"],
                                                [UIImage imageNamed:@"CB00029"],
                                                [UIImage imageNamed:@"CB00030"],
                                                [UIImage imageNamed:@"CB00031"],
                                                [UIImage imageNamed:@"CB00032"],
                                                [UIImage imageNamed:@"CB00033"],
                                                [UIImage imageNamed:@"CB00034"],
                                                [UIImage imageNamed:@"CB00035"],
                                                [UIImage imageNamed:@"CB00036"],
                                                [UIImage imageNamed:@"CB00037"],
                                                [UIImage imageNamed:@"CB00038"],
                                                [UIImage imageNamed:@"CB00039"],
                                                [UIImage imageNamed:@"CB00040"],
                                                [UIImage imageNamed:@"CB00041"],
                                                [UIImage imageNamed:@"CB00042"],
                                                [UIImage imageNamed:@"CB00043"],
                                                [UIImage imageNamed:@"CB00044"],
                                                [UIImage imageNamed:@"CB00045"],
                                                [UIImage imageNamed:@"CB00046"],
                                                [UIImage imageNamed:@"CB00047"],
                                                [UIImage imageNamed:@"CB00048"],
                                                [UIImage imageNamed:@"CB00049"],
                                                [UIImage imageNamed:@"CB00050"],
                                                [UIImage imageNamed:@"CB00051"],
                                                [UIImage imageNamed:@"CB00052"],
                                                [UIImage imageNamed:@"CB00053"],
                                                [UIImage imageNamed:@"CB00054"],
                                                [UIImage imageNamed:@"CB00055"],
                                                [UIImage imageNamed:@"CB00056"],
                                                [UIImage imageNamed:@"CB00057"],
                                                [UIImage imageNamed:@"CB00058"],
                                                [UIImage imageNamed:@"CB00059"],
                                                [UIImage imageNamed:@"CB00060"], nil];
    // apply properties of UIImageView to set animation duration using float number for x seconds (for 24fps use 60/24=2.5sec)
    self.backgroundImageView.animationDuration = 2.5f;
    // animation repeat count qty (only once)
    self.backgroundImageView.animationRepeatCount = 1;
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

// REMOVED IMPLEMENTATION OF BUTTON AS REPLACED WITH TOUCH EVENT
//- (IBAction)buttonPressed {
//    
//    // create local random variable and assign length of array
//    // DELETE AS MOVED TO 'MODEL'
//    //int random = arc4random_uniform(self.predictions.count);
//    
//    // create variable called NSArray of predictions
//    // allocate in memory and init with data Strings
//    
//    // moved as declared 'predictions' @PROPERTY now so can access in all methods (i.e. viewDidAppear)
////    NSArray *predictions = [[NSArray alloc] initWithObjects:@"It is certain", @"It is decidedly certain", @"It is doubtful", nil];
//    
//    //NSLog(@"button pressed"); // displays in console
//    
//    // self refers to UILabel instance of view controller.
//    // change text when pressed. use 'text' property
//    //self.predictionLabel.text = @"Yes";
//    
//    // use predictions array
//    // access elements in it
//    // send it message objectAtIndex
//    // so when click button it will set to index 0
//    // updated to refer to the property of predictions (not the instance variable itself, so change to 'self. '
//    // pass the generated random number
//    //REPLACE BELOW SINCE 'MODEL' CLASS CREATED FOR DATA
//    //self.predictionLabel.text = [self.predictions objectAtIndex:random];
//    // assign to crystalBall property and assign it to the randomPrediction message
//    self.predictionLabel.text = [self.crystalBall randomPrediction];
//
//}

# pragma mark -
# pragma mark Make Prediction
- (void) makePrediction {
    
    // instruct image view to commence animating background image
    [self.backgroundImageView startAnimating];
    self.predictionLabel.text = [self.crystalBall randomPrediction];
    self.predictionLabel.alpha = 0.0f;
    
    // use UIView animation helper methods
    // animateWithDuration is a Class method
    // text fade in after background animation (of 2.5 seconds) ends
    // set to 6 seconds so performs fluidly
    // pass it a Block of code ^{}
    [UIView animateWithDuration:6.0 animations:^{
        // increase alpha to 1.0 to establish animation for text over specified duration. transitions gradually from previously set alpha baseline value of 0
        self.predictionLabel.alpha = 1.0f;
    }];
}

// implement grandfathered methods from UIResponder to respond to motion events

#pragma mark -
#pragma mark Responding to Shake Motion Events

// test in simulator with Menu > Hardware > Shake Event

- (void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    NSLog(@"motion began");
    // reset prediction
    self.predictionLabel.text = nil;
}

- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    // conditional to only display random prediciton if event is of type shake
    NSLog(@"motion ended");
    if (motion == UIEventSubtypeMotionShake) {
        // REPLACED WITH CALLED TO MAKEPREDICTION METHOD
//        self.predictionLabel.text = [self.crystalBall randomPrediction];
        // send message to own instance method of the view controller to make a prediction
        [self makePrediction];
    }
}

- (void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    NSLog(@"");
}

#pragma mark -
#pragma mark Responding to Touch Motion Events

// test in simulator by clicking anywhere on iPhone screen

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    self.predictionLabel.text = nil;
    self.predictionLabel.alpha = 0.0f;
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    // REPLACED WITH CALLED TO MAKEPREDICTION METHOD
//    self.predictionLabel.text = [self.crystalBall randomPrediction];
    // send message to own instance method of the view controller to make a prediction
    [self makePrediction];
    
    
}

- (void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"touches cancelled");
}

@end
