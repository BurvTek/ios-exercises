//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSMutableString *longStringOfNumbers =[NSMutableString stringWithString:@""];
    
    while (number<=otherNumber) {
        [longStringOfNumbers appendFormat:@"%ld", number];
        ++number;
        }
    
    return longStringOfNumbers;
}

@end
