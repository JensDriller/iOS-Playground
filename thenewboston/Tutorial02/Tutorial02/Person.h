//
//  Person.h
//  Tutorial06
//
//  Created by Jens Driller on 07/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    
    int age;
    int weight;
    
}

-(int) age;
-(void) setAge: (int) a;

-(int) weight;
-(void) setWeight: (int) w;

-(void) print;

@end