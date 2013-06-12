//
//  AppDelegate.h
//  iTutorial05
//
//  Created by Jens Driller on 14/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

// as soon as program starts show SwitchClass
@class SwitchClass;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) IBOutlet UIWindow *window;
@property (retain, nonatomic) IBOutlet SwitchClass *switchClass;

@end
