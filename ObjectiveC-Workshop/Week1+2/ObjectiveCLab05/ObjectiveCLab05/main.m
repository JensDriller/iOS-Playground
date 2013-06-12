//
//  main.m
//  ObjectiveCLab05
//
//  Created by Jens Driller on 08/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *s = [[NSString alloc]initWithString:@"Hello, World!"];
        NSLog(@"%@", s);
        
        
        NSString *s1 = [[NSString alloc]initWithString:@"String1"];
        NSString *s2 = [[NSString alloc]initWithString:@"String2"];
        /* short form:
         NSString *s2 = @"String2";
         */
        
        NSArray *arr = [[NSArray alloc]initWithObjects:s1, s2, nil];
        NSLog(@"%@", arr);
        NSLog(@"%@", [arr  objectAtIndex:0]);
        
        
        NSMutableArray *mutarr = [arr mutableCopy];
        [mutarr addObject:[[NSString alloc]initWithString:@"String3"]];
        /* short form:
         [mutarr addObject:@"String3"];
         */
        NSLog(@"%@ %ld", mutarr, [mutarr count]);
        
    }
    return 0;
}

