//
//  Person.m
//  Tutorial06
//
//  Created by Jens Driller on 07/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

// double quotes at import indicate local files (in same folder)

#import "Person.h"

@implementation Person

-(int) age {
    
    return age;

}

-(void) setAge: (int) a {    
    
    age = a;
    
}

-(int) weight {
    
    return weight;
    
}

-(void) setWeight: (int) w {
    
    weight = w;
    
}

-(void) print {
    
    NSLog(@"Im %i years old and weight %i pounds.", age, weight);
    
}

@end