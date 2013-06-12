//
//  main.m
//  Tutorial07
//
//  Created by Jens Driller on 08/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Square.h"
#import "XYPoint.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        Rectangle *r = [[Rectangle alloc]init];
        [r setWidth:6 andHeight:8];
        
        NSLog(@"Rectangle is %i by %i", r.width, r.height);
        NSLog(@"Area = %i, Perimeter = %i", [r area], r.perimeter);
        
        Square *s = [[Square alloc]init];
        [s setSide:6];
        
        NSLog(@"Square side is %i", s.side);
        NSLog(@"Area is %i, Perimeter is %i", s.area, s.perimeter);
        
        
        Rectangle *r2 = [[Rectangle alloc]init];
        XYPoint *p = [[XYPoint alloc]init];
        [p setXY:100:300];
        [r2 setWidth:6 andHeight:8];
        r2.origin = p;
        /* oder:
        [r2 setOrigin:p];
         */
        
        NSLog(@"Width and height is %i and %i", r2.width, r2.height);
        NSLog(@"Origin is at %i,%i", [[r2 origin]x], r2.origin.y);
        NSLog(@"Area and perimeter are %i and %i", r2.area, r2.perimeter);
        
    }
    return 0;
}

