//
//  MarysAppleHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/8/14.
//
//

#import "MarysAppleHandler.h"

@implementation MarysAppleHandler

- (NSString *) itemMaryCanPurchaseForDollars:(NSInteger)dollars {
    NSString *itemToReturn;
    
    /* WORK HERE */
    if (dollars>4) {
        if (dollars==5)
                { itemToReturn = @"have some gum" ;
                    }
            else if (dollars==6) {
                itemToReturn = @"have an apple";
                    }
            else if (dollars==1000) {
                itemToReturn = @"have an Apple computer";
                    }
            else if (dollars==1000000000) {
                itemToReturn = @"have The Big Apple";
                    }
// message = ((dollars= 5) ? @"have some gum" : @"have an apple");
        //    itemToReturn = [NSString stringWithFormat:@"For $%ld, Mary can: %@", dollars, message];
        
            }
    else {
        itemToReturn = @"get out of my store";
        }
    return itemToReturn;
}

- (NSUInteger) dollarCostForAppleFlavoredVodka {
    /* WORK HERE */

    NSUInteger cost = 24;
    
    if (self.getsDiscount) {
        cost *= .75;
    }
    
    return cost;
}

@end
