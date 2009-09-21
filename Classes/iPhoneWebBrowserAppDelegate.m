//
//  iPhoneWebBrowserAppDelegate.m
//  iPhoneWebBrowser
//
//  Created by John Haro on 9/20/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "iPhoneWebBrowserAppDelegate.h"
#import "iPhoneWebBrowserViewController.h"

@implementation iPhoneWebBrowserAppDelegate

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
