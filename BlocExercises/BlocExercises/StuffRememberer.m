//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    /* WORK HERE */

    self.rememberer = arrayToRemember;
    NSLog(@"Rememberer %@", self.rememberer);
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    /* WORK HERE */
    self.rememberer1 = arrayToCopy;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    /* WORK HERE */
    self.myFloat = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {
    /* WORK HERE */
   return self.rememberer;
}

- (NSMutableArray *) arrayYouShouldCopy {
    /* WORK HERE */
    return self.rememberer1;
}

- (CGFloat) floatYouShouldRemember {
    /* WORK HERE */
    return self.myFloat;
}

@end