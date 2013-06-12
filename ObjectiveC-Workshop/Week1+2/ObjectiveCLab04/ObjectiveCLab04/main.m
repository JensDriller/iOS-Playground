//
//  main.m
//  ObjectiveCLab04
//
//  Created by Jens Driller on 08/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        Person *jens = [[Person alloc]init];
        jens.age = 22;
        [jens ageBy:1];
        
        NSLog(@"I am %i years old.", [jens age]);
        NSLog(@"My age in 10 years: %i", [jens ageInTenYears]);
        
    }
    return 0;
}

