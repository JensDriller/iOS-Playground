//
//  Person.h
//  ObjectiveCLab02
//
//  Created by Jens Driller on 08/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {

    int _age;
    
}

- (void) setAge:(int)age;
- (int) age;

@end
