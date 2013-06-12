//
//  main.m
//  Tutorial12
//
//  Created by Jens Driller on 10/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        // Arrays immutable        
        NSArray *food = [NSArray arrayWithObjects:@"apples", @"bacon", @"corn", @"donuts", @"elfs", @"fidge", nil];
        NSLog(@"%@", [food objectAtIndex:2]);
        
        for(int i = 0; i < [food count]; i++) {
            NSLog(@"item at index %i: is %@", i, [food objectAtIndex:i]);
        }
        
        
        // Arrays mutable        
        NSMutableArray *changeme = [NSMutableArray arrayWithCapacity:25];
        [changeme addObject:[NSNumber numberWithInteger:2]];
        [changeme addObject:[NSNumber numberWithInteger:4]];
        
        for(int i = 6; i < 100; i++) {
            [changeme addObject:[NSNumber numberWithInteger:i]];
        }
        
        for(int i = 0; i < [changeme count]; i++) {
            NSLog(@"item here is: %@", [changeme objectAtIndex:i]);
            /* oder:
             NSLog(@"item here is: %ld", [[changeme objectAtIndex:i]integerValue]);
             */ 
        }
        
        
        // Dictionary (associative array)
        NSMutableDictionary *mydic = [NSMutableDictionary dictionary];
        [mydic setObject:@"aaa-value" forKey:@"key-a"];
        [mydic setObject:@"bbb-value" forKey:@"key-b"];
        [mydic setObject:@"ccc-value" forKey:@"key-c"];
        
        NSLog(@"%@", [mydic objectForKey:@"key-b"]);
        
    }
    return 0;
}