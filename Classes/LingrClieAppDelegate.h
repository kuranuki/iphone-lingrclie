//
//  LingrClieAppDelegate.h
//  LingrClie
//
//  Created by 倉貫 義人 on 09/02/18.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LingrClieViewController;

@interface LingrClieAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    LingrClieViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet LingrClieViewController *viewController;

@end

