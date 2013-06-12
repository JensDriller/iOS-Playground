//
//  main.m
//  ObjectiveCLab06
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
        jens.name = @"Jens Driller";
        jens.address = @"Old Trafford 88";
        jens.age = 23;
        /* long form:
        [jens.children addObject:@"Ernie"];
        [jens.children addObject:@"Bert"];
        [jens.children addObject:@"Tom"];
         */
        [jens.children addObjectsFromArray:[[NSArray alloc]initWithObjects:@"Ernie",@"Bert",@"Tom", nil]];
        
        
        
        NSLog(@" %@ ", jens.children);
        
    }
    return 0;
}

