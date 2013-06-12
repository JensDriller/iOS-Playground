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

@synthesize age = _age, weight = _weight;

- (void) print {
    
    NSLog(@"Im %i years old and weight %i pounds.", _age, _weight);
    
}

- (void) dateAge:(int)a money:(int)b {
    
    NSLog(@"You can date chicks %i years old.", (a/2+7)-(b/100000));
    
}

@end