//
//  LSCrystalBall.h
//  CrystalBall
//
//  Created by Luke on 28/04/2014.
//  Copyright (c) 2014 Ceenos. All rights reserved.
//

#import <Foundation/Foundation.h>

// purpose is to create a random prediction
@interface LSCrystalBall : NSObject

// create an Array Property for Crystal Ball class
@property (strong, nonatomic, readonly) NSArray *predictions;

// create instance method to return string object
// name of method randomPrediction
- (NSString*) randomPrediction;

@end
