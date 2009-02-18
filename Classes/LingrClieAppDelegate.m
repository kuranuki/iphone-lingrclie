//
//  LingrClieAppDelegate.m
//  LingrClie
//
//  Created by 倉貫 義人 on 09/02/18.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "LingrClieAppDelegate.h"
#import "LingrClieViewController.h"

@implementation LingrClieAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
