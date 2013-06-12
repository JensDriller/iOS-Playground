//
//  Square.m
//  Tutorial07
//
//  Created by Jens Driller on 08/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Square.h"

@implementation Square : Rectangle

- (void) setSide:(int)s {    
    [self setWidth:s andHeight:s];    
}

- (int) side {    
    return _width;    
}

@end
