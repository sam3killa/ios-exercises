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
    
    // Create an NSArray and use the componentsSeparateByString method
    NSArray *stringToArray = [characterString componentsSeparatedByString:@";"];
    
    return stringToArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    // Create an NSString and use the componentsJoinedByString method
    NSString *arrayToString = [characterArray componentsJoinedByString:@";"];
    
    return arrayToString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    // Create a Mutable Array using the characterArray and calling the mutableCopy method on it.
    NSMutableArray *starTrekMutableArray = [characterArray mutableCopy];
    
    // Create an NSSortDescriptor to describe how I want to sort the array. Ascending order, and comparing the strings regardless of case.
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc]initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    
    // Call the sortUsingDescriptors method on the starTrekMutableArray to sort the array
    [starTrekMutableArray sortUsingDescriptors:@[sortDescriptor]];
    
    // Return the array
    return starTrekMutableArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    
    // Create a mutable copy of the characterArray
    NSMutableArray *starTrekMutableArray = [characterArray mutableCopy];
    
    // Create an NSPredicate to filter out strings that contain the character "Worf"
    NSPredicate *worfDetected = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'Worf'"];
    
    // Filter the starTrekMutableArray to find only strings that contain the string Worf
    [starTrekMutableArray filterUsingPredicate:worfDetected];
    
    // Check to see if the array contains anything because if a string contains "worf" it will be left in the array
    if (starTrekMutableArray.count == 0 ){
        
        return NO;
        
    }
    else {
 
        return YES;
    
    }
}

@end
