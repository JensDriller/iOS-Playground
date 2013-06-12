//
//  main.m
//  Tutorial11
//
//  Created by Jens Driller on 10/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        // NSStrings >> Immutable (constand) only accessor methods
        // if assigning a new String to it > memory leak with 'old' string!!!!
        
        NSString *s = @"cats dont like bananas";
        NSNumber *n = [NSNumber numberWithInteger:100];
        
        // %@ prints/replaces any (!) type of object
        NSLog(@"%@ and %@", s, n);
        NSLog(@"Length of the string: %ld", [s length]);
        
        NSString *tester = [NSString stringWithString:s];
        NSLog(@"Copied string is %@", tester);
        
        tester = [s uppercaseString];
        NSLog(@"Upper case is %@", tester);
        
        
        //////////////////////////////////////////
        NSLog(@" ");
        NSLog(@" ");
        //////////////////////////////////////////
        
        
        NSString *s2 = @"1234567890";
        NSLog(@"First 2 chars from %@ are %@", s2, [s2 substringToIndex:2]);
        NSLog(@"From 2 to end of %@ is %@", s2, [s2 substringFromIndex:2]);
        // from index 2, length of 4
        NSLog(@"From 2 to 4 from %@ is %@", s2, [s2 substringWithRange:NSMakeRange(2, 4)]);
        
        NSRange range = [s2 rangeOfString:@"4567"];
        NSLog(@"Location is %lu and length is %lu", range.location, range.length);
        
        
        //////////////////////////////////////////
        NSLog(@" ");
        NSLog(@" ");
        //////////////////////////////////////////
        
        
        // NSMutableString
        NSMutableString *ms = [NSMutableString stringWithString:s];
        NSLog(@"%@", ms);

        [ms insertString:@"LOL" atIndex: 8];         
        NSLog(@"%@", ms);
        
        [ms appendString:@" APPENDED!!"];
        NSLog(@"%@", ms);
        
        [ms deleteCharactersInRange:NSMakeRange(15, 2)];
        NSLog(@"%@", ms);
        
        [ms setString:@"I am a new string mofo!"];
        NSLog(@"%@", ms);

        [ms replaceCharactersInRange:NSMakeRange(11, 12) withString:@"mother!"];
        NSLog(@"%@", ms);
        
        NSString *old = @"mother";
        NSString *new = @"baby seal";
        NSRange therange = [ms rangeOfString:old];
        [ms replaceCharactersInRange:therange withString:new];
        NSLog(@"%@", ms);       
        
    }
    return 0;
}