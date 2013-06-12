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

- (NSString *) allChildren1 {
    
    NSString *returnValue = @"";
    
    for(int i = 0; i < [children count]; i++) {
        
        returnValue = [returnValue stringByAppendingString:[children objectAtIndex:i]];
        
        if(i != [children count] - 1) {
            returnValue = [returnValue stringByAppendingString:@", "];
        }
        
    }
         
    return [returnValue autorelease];
    
}

- (NSString *) allChildren2 {
    
    NSMutableString *returnValue = [[NSMutableString alloc]initWithString:@""];
    
    for(int i = 0; i < [children count]; i++) {
        
        [returnValue appendString:[children objectAtIndex:i]];
     
        if([children objectAtIndex:i] != [children lastObject]) {
            [returnValue appendString:@", "];
        }
        
    }
    
    return [returnValue autorelease];
    
}

@end
