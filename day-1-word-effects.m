//
//  main.m
//  Day 1 - Word Effects
//
//  Created by Murat Ekrem Kolcalar on 10/30/17.
//  Copyright © 2017 mumu. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString *editedInput;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        while (true) {
            
            char inputChars[255];
            printf("Input a string: ");
            fgets(inputChars, 255, stdin);
            
            if (inputChars[0] == '\n') {
                fgets(inputChars, 255, stdin);
            }
            
            printf("Your string is %s\n", inputChars);
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            NSString *editedInput = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];

            
            int choice;
            
            printf("Please input a number\n");
            printf("If 1, the program will uppercase your string\n");
            printf("If 2, the program will lowercase your string\n");
            printf("If 3, the program will turn your string into integer\n");
            printf("If 4, the program will Canadianize your string\n");
            printf("If 5, the program will check your response\n");
            printf("If 6, the program will despace your string.");
            
            scanf("%d", &choice);
            NSLog(@"Your choice is: %d", choice);
            
            
            // SWITCH STATEMENT TEST
            
            switch (choice) {
                case 1:
                {
                    NSLog(@"Input was: %@", [inputString uppercaseString]);
                }
                    break;
                    
                case 2:
                {
                    NSLog(@"Input was: %@", [inputString lowercaseString]);
                }
                    break;
                case 3:
                {
                    NSLog(@"The number you chose was: %i", [inputString intValue]);
                }
                    break;
                case 4:
                {
                    NSString *canadianMode = @", eh?";
                    
                    NSString *canadianizedString = [editedInput stringByAppendingString:canadianMode];
                    
                    NSLog(@"%@", canadianizedString);
                }
                    break;
                case 5:
                {
                    if ([editedInput hasSuffix:@"!"] == YES) {
                        NSLog(@"Whoa mate! Calm down");
                    } else if ([editedInput hasSuffix:@"?"] == YES) {
                        NSLog(@"Did you ask something?");
                    } else {
                        NSLog(@"I don't know what to do.");
                    }
                }
                    break;
                case 6:
                {
                    NSString *deSpacedString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                    
                    NSLog(@"%@", deSpacedString);
                }
                    break;
                    
                default:
                    break;
            }
            
            // SWITCH STATEMENT TEST
        }
        
    }
    
    return 0;
}
