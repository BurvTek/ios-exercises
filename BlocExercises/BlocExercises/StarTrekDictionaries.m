//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    
    NSString *favoriteDrink = characterDictionary[@"favorite drink"];
    
    return favoriteDrink;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    
    NSMutableArray *favoriteDrinks = [NSMutableArray array];
    for (NSDictionary *starTrekCharacters in charactersArray) {
         NSString *favoriteDrink = starTrekCharacters[@"favorite drink"];
        [favoriteDrinks addObject:favoriteDrink];
     }
     return favoriteDrinks;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    NSMutableDictionary *myMutableDict = [characterDictionary mutableCopy];
    [myMutableDict  setObject:@("Engage") forKey:@"quote"];
    
    return myMutableDict;
    
}

@end
