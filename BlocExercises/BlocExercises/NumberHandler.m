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
    
    // Store the intValue of the NSNumber number into a variable called numberValue
    int numberValue = [number intValue];
    
    // Double the numberValue
    numberValue = numberValue * 2;
    
    // Convert the numberValue back to an NSNumber
    NSNumber *numberDoubled = [NSNumber numberWithInt:numberValue];
    
    return numberDoubled;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    
    // Create an empty NSMutableArray
    NSMutableArray *numberArray = [[NSMutableArray alloc] init];
    
    // Create a for loop that loops based on the gap between the first number and the otherNumber
    for (NSInteger i = number; i <= otherNumber ; i++) {
        
        // Add the numbers in between the 2 given numbers to the NSMutableArray
        [numberArray addObject:[NSNumber numberWithInteger:i]];
        
    }
    
    return numberArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    
    // Create an NSNumber that stores the first value in the arrayOfNumbers
    NSNumber *lowestNumber = arrayOfNumbers[0];
    
    // Create an NSInteger to use as the return value
    NSInteger numberResult = 0;
    
    // Loop through the arrayOfNumbers
    for (NSNumber *number in arrayOfNumbers) {
        
        // Compare the intValues of the NSNumber number and store the lowest number into the lowestNumber variable
        if ([number intValue] < [lowestNumber intValue]) {
            lowestNumber = number;
        }
    }
    
    // Convert the result into an NSInteger and store it into the numberResult variable
    numberResult = [lowestNumber integerValue];
    
    return numberResult;
;
}

@end
