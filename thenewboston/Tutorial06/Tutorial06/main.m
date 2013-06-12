//
//  main.m
//  Tutorial06
//
//  Created by Jens Driller on 08/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        Person *jens = [[Person alloc] init];
        
        jens.age = 23;
        jens.weight = 80;
        
        [jens print];
        NSLog(@"%i", jens.age);
        
        [jens dateAge:23 money:300000];
        
    }
    return 0;
}

