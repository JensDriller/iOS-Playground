//
//  Person.h
//  Tutorial06
//
//  Created by Jens Driller on 07/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    
    int _age;
    int _weight;
    
}

@property int age, weight;

- (void) print;
- (void) dateAge:(int)a money:(int)b;

@end