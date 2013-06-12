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
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) UIImage *picture;

- (id) initWithName:(NSString*)name andAge:(int)age andImage:(UIImage*)picture;
+ (Person*) personWithName:(NSString*)name andAge:(int)age andImage:(UIImage*)picture;

@end
