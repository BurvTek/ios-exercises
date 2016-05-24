//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    NSInteger numberInt = [number integerValue];
    NSInteger product = 2 * numberInt;
    NSNumber *productNumber = @(product);
    return productNumber;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSMutableArray *sequenceArray = [[NSMutableArray alloc]init];
    for (NSInteger i = number; i <= otherNumber; i = i + 1){
        NSNumber * tempNumber = [[NSNumber alloc] initWithInteger:i];
        [sequenceArray addObject:tempNumber];
         }
    return sequenceArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    NSMutableArray *mutablearrayOfNumbers = [arrayOfNumbers mutableCopy];
    NSArray *sortedNumbers = [mutablearrayOfNumbers sortedArrayUsingSelector:@selector(compare:)];
    NSInteger lowestNumber = [sortedNumbers.firstObject integerValue];
    return lowestNumber;
}
    @end
