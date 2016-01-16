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
    
    // Retrieve the value stored in the "favorite drink" key in the characterDictionary
    NSString *favoriteDrink = characterDictionary[@"favorite drink"];
    
    return favoriteDrink;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    
    // Create an NSMutableArray to store the strings
    NSMutableArray *myArray = [[NSMutableArray alloc] init];
    
    // Iterate through the characters array using a for in loop
    for (NSDictionary *character in charactersArray) {
        
        // Retrive the value stored in the "favorite drink" key and append it to the mutable array called myArray
        NSString *favoriteDrink = character[@"favorite drink"];
        [myArray addObject:favoriteDrink];
    }
    
    return myArray;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    // Create an NSMutableDictionary that is a copy of the characterDictionary
    NSMutableDictionary *addedQuoteDictionary = [characterDictionary mutableCopy];
    
    // Create a random quote
    NSString *quote = @"Some random quote that this person said";
    
    // Add the quote to the dictionary
    [addedQuoteDictionary setObject:quote forKey:@"quote"];
    
    return addedQuoteDictionary;
}

@end
