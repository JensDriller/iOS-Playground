//
//  Person.m
//  ObjectiveCLab03
//
//  Created by Jens Driller on 08/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize age = _age, name = _name, picture = _picture;

- (id) initWithName:(NSString*)name andAge:(int)age andImage:(UIImage*)picture {
    
    if(self = [super init]) {
        _age = age;
        _name = name;
        _picture = picture;
    }
    return self;
    
}

+ (id) personWithName:(NSString*)name andAge:(int)age andImage:(UIImage*)picture {
    
    return [[self alloc]initWithName:name andAge:age andImage:picture];
    
}

@end
