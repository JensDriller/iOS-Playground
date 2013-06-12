//
//  main.m
//  Tutorial08
//
//  Created by Jens Driller on 08/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Numz.h"
#import "Charz.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        Numz *n = [[Numz alloc]init];
        Charz *ch = [[Charz alloc]init];
        
        id generic;
        
        generic = n,
        [generic print];
        
        generic = ch;
        [generic print];
               
    }
    return 0;
}

