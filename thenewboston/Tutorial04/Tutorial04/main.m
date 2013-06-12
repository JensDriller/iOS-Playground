//
//  main.m
//  Tutorial04
//
//  Created by Jens Driller on 07/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        float f1 = 34.45;
        float f2;
        
        int i1;
        int i2 = 15, i3 = 10;
        
        // float to int, decimal point just cut off
        i1 = f1;
        NSLog(@"%i", i1);
        
        // entire expression treated as integer and assigned to float
        f2 = i2 / i3;
        NSLog(@"%f", f2);
        
        // one of numbers in expression as float to get float answer
        f2 = f1 / i3;
        NSLog(@"%f", f2);
        
        
        // TYPECASTING
        f2 = (float) i3/8;
        NSLog(@"Typecasted: %f", f2);
        
        NSLog(@"%i", (int) 26.77);
        
    }
    return 0;
}

