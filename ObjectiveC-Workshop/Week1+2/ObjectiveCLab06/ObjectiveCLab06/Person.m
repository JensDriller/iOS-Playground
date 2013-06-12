//
//  Person.m
//  ObjectiveCLab03
//
//  Created by Jens Driller on 08/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize age, name, address, children;

- (id) init {
    
    if(self = [super init]) {
        children = [[NSMutableArray alloc]init];
    }
    return self;
    
}

- (void) ageBy:(int)years {
    
    age += years;
    
}

- (int) ageInTenYears {
    
    return age+10;
    
}

/*- (void) dealloc {
    
    [age release];
    [name release];
    [address release];
    [children release];
    [super dealloc];
    
}*/

@end
