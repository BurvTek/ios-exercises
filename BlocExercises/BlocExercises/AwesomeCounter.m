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
    
    if (number<=otherNumber) {
        while (number<=otherNumber) {
        [longStringOfNumbers appendFormat:@"%ld", number];
        ++number;
        }
    }
    else {
        while (otherNumber<=number) {
                [longStringOfNumbers appendFormat:@"%ld", otherNumber];
                ++otherNumber;
        }
    }
    return longStringOfNumbers;
}

@end
