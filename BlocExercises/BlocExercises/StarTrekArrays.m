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
    NSMutableArray *myMutableTrekies = [NSMutableArray arrayWithCapacity:5];
    for (NSInteger idx = 0; idx < characterArray.count; idx++) {
        [myMutableTrekies addObject:characterArray[idx]];
    }
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [myMutableTrekies sortUsingDescriptors:@[sortDescriptor]];

    return myMutableTrekies;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
    BOOL worfIsHere = NO;
    NSMutableArray *myMutableTrekies = [NSMutableArray arrayWithCapacity:5];
    for (NSInteger idx = 0; idx < characterArray.count; idx++) {
        [myMutableTrekies addObject:characterArray[idx]];
    }
    NSPredicate *containsThe = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    [myMutableTrekies filterUsingPredicate:containsThe];
    for (NSString *worfName in myMutableTrekies) {
        worfIsHere = YES;
    }
    return worfIsHere;
}

@end
