//
//  LSCrystalBall.m
//  CrystalBall
//
//  Created by Luke on 28/04/2014.
//  Copyright (c) 2014 Ceenos. All rights reserved.
//

#import "LSCrystalBall.h"

@implementation LSCrystalBall

// GETTER method returns NSArray object
// name of property 'predictions'
- (NSArray *) predictions {
    // check instance var _predictions (object) exists
    // and it if exists we do not have to alloc and init repeatedly
    // if it is nil, alloc and init a new prediction instance var
    if (_predictions == nil) {
        _predictions = [[NSArray alloc] initWithObjects:
                        @"Who's birthday is it today?",
                        @"It's not your birthday today, is it?",
                        @"Who cares?", nil];
    }
    return _predictions;
}

// implementation for randomPrediction method
- (NSString*) randomPrediction {
    // return random string object from an array when called
    // generate random number, and access an object from array
    
    int random = arc4random_uniform(self.predictions.count);
    
    // return object from predictions property
    return [self.predictions objectAtIndex:random];
    
    // must return something by default
    //return nil;
}

@end
