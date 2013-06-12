//
//  main.m
//  Tutorial02
//
//  Created by Jens Driller on 07/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main (int argc, const char * argv[])
{
    
    @autoreleasepool {       
        
        Person *jens = [[Person alloc] init];
        
        /* long form:
        Person *jens;
        jens = [Person alloc];
        jens = [jens init];
        */
        
        [jens setAge: 23];
        [jens setWeight: 80];
        [jens print];
        
        NSLog(@"Jens is %i and weights %i pounds.", [jens age], [jens weight]);
        
        // not allowed when ARC (Automatic Reference Counting) activated!
        //[jens release]; jens = nil;
        
        
    }
    return 0;
}