//
//  Person.h
//  ObjectiveCLab03
//
//  Created by Jens Driller on 08/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property int age;
@property (copy) NSString *name, *address;
@property (retain) NSMutableArray *children;

- (id) init;
- (void) ageBy:(int)years;
- (int) ageInTenYears;
//- (void) dealloc;

- (NSString *) allChildren1;
- (NSString *) allChildren2;

@end
