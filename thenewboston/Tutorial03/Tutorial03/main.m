//
//  main.m
//  Tutorial03
//
//  Created by Jens Driller on 07/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        int i = 20;
        float f = 31.37;
        double d = 45.34e+12; // 45.43 and move decimal point 12 spaces to the right
        char c = 'b';
        
        NSLog(@"%i", i);
        NSLog(@"%f", f);
        NSLog(@"%e", d);
        NSLog(@"%c", c);
        
        int sum = 3 + 2 * 4;
        NSLog(@"%i", sum);
        
        int m = 38 % 7;
        NSLog(@"%i", m);
        
    }
    return 0;
}

