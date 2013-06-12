//
//  main.m
//  Tutorial10
//
//  Created by Jens Driller on 10/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Number objects
        NSNumber *ns_i = [NSNumber numberWithInteger:100];
        NSNumber *ns_f = [NSNumber numberWithFloat:100.00];
        NSLog(@"%@ and %@", ns_i, ns_f);
        
        // Primitive types
        int i = [ns_i intValue];
        float f = [ns_f floatValue];
        NSLog(@"%i and %f", i, f);
        
        if([ns_i isEqualToNumber:ns_f]) {
            NSLog(@"They are equal!");
        } else {
            NSLog(@"They are not equal!");
        }
        
        NSNumber *ns_i2 = [NSNumber numberWithInteger:100];
        NSNumber *ns_f2 = [NSNumber numberWithFloat:150.00];
        
        if([ns_i2 compare:ns_f2] == NSOrderedAscending) {
            NSLog(@"First is less!");
        } else {
            NSLog(@"Second is less!");
        }
        
    }
    return 0;
}

