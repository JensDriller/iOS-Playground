//
//  Rectangle.m
//  Tutorial07
//
//  Created by Jens Driller on 08/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

@synthesize width = _width, height = _height;

- (int) area {  
    return _width * _height;    
}

- (int) perimeter {    
    return (_width + _height) * 2;    
}

- (void) setWidth:(int)width andHeight:(int)height {    
    _width = width;
    _height = height;    
}

- (XYPoint *) origin {    
    return _origin;    
}

- (void) setOrigin:(XYPoint *)origin {    
    _origin = origin;    
}

@end
