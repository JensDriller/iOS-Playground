//
//  XYPoint.m
//  Tutorial07
//
//  Created by Jens Driller on 08/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "XYPoint.h"

@implementation XYPoint

@synthesize x = _x, y = _y;

- (void) setXY:(int)x:(int)y {    
    _x = x;
    _y = y;    
}

@end
