//
//  Rectangle.h
//  Tutorial07
//
//  Created by Jens Driller on 08/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class XYPoint;

@interface Rectangle : NSObject {
    
    int _width, _height;
    XYPoint *_origin;
    
}

@property int width, height;

- (int) area;
- (int) perimeter;
- (void) setWidth:(int)width andHeight:(int)height;
- (XYPoint *) origin;
- (void) setOrigin:(XYPoint *)o;

@end
