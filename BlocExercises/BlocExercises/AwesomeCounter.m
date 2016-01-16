//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    
    NSString *emptyString = @"";
    NSMutableString *mutableStringResult = [emptyString mutableCopy];
    NSString *containerString;
    
    // Check to see if number is less than otherNumber.
    if (number < otherNumber){
        while(number <= otherNumber){
            containerString =[NSString stringWithFormat: @"%ld",(long)number];
            [mutableStringResult appendString:containerString];
            number++;
        }
    }
    
    // Check to see if otherNumber is less than number
    else if (otherNumber < number){
        while(otherNumber <= number){
            containerString =[NSString stringWithFormat: @"%ld",(long)otherNumber];
            [mutableStringResult appendString:containerString];
            otherNumber++;
        }
    }
    
    // Check to see if the numbers are equal
    else if (otherNumber == number){
        containerString =[NSString stringWithFormat: @"%ld",(long)number];
        [mutableStringResult appendString:containerString];
    }
    
    return mutableStringResult;
}

@end
