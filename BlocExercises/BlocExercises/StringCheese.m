//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /* WORK HERE */
    NSString *fullSentence = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    
    return fullSentence;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    
    NSLog (cheeseName);
    
    NSString *cheeseString = [NSString stringWithFormat:cheeseName] ;
    
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        NSLog(@"If is True");
        /* WORK HERE, ASSUMING `cheeseName` ENDS WITH " cheese" */
        NSRange cheeseNameRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
        
        NSLog (@"Cheese Name has cheese in %@", NSStringFromRange(cheeseNameRange));
        
        NSString *newcheeseString = [cheeseName stringByReplacingCharactersInRange:cheeseNameRange withString:@""];
        
        NSLog(@"cheeseString = %@", newcheeseString);
        
        return newcheeseString;
    
    } else {
        /* WORK HERE, ASSUMING `cheeseName` DOES NOT END WITH " cheese" */
    
     //   NSString *cheeseString = [NSString stringWithFormat:cheeseName] ;

 }
   return cheeseString;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        NSString *cheeseCountString = [NSString stringWithFormat:@"%ld cheese", cheeseCount];
        return cheeseCountString;
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        NSString *cheeseCountString = [NSString stringWithFormat:@"%ld cheeses", cheeseCount];
        return cheeseCountString;
    }
    
    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */
    
    return nil;
}

@end
