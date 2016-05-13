//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    NSArray *starTrekCharactersArray = [characterString componentsSeparatedByString:@";"];
    [starTrekCharactersArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"Character #%ld: %@", idx + 1, obj);
    }];
    
    return starTrekCharactersArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSString *starTrekiesString = [characterArray componentsJoinedByString:@";"];
    NSLog(@"Who do we have? %@", starTrekiesString);
    
    return starTrekiesString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    NSArray *myTrekies = [characterArray sortedArrayUsingDescriptors:@[sortDescriptor]];
    return myTrekies;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
    
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    NSArray *result = [characterArray filteredArrayUsingPredicate:containsWorf];
    return result.count>0;
}

@end
