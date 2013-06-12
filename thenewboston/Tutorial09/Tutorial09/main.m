//
//  main.m
//  Tutorial09
//
//  Created by Jens Driller on 09/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        enum day {m=1,t,w,h,f};
        enum day entry;
        
        NSLog(@"Enter a number of day of the week!");
        scanf("%i", &entry);
        
        switch(entry) {
            case m:
                NSLog(@"That day is Monday!");
                break;
            case t:
                NSLog(@"That day is Tuesday!");
                break;
            case w:
                NSLog(@"That day is Wednesday!");
                break;
            case h:
                NSLog(@"That day is Thursday!");
                break;
            case f:
                NSLog(@"That day is Friday!");
                break;
            default:
                break;
        }
        
    }
    return 0;
}

