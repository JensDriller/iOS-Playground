//
//  XYPoint.h
//  Tutorial07
//
//  Created by Jens Driller on 08/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYPoint : NSObject {    
    
    int _x, _y;
    
}

@property int x, y;

- (void) setXY:(int)xVal:(int)yVal;

@end
