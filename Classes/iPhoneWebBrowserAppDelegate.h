//
//  iPhoneWebBrowserAppDelegate.h
//  iPhoneWebBrowser
//
//  Created by John Haro on 9/20/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class iPhoneWebBrowserViewController;

@interface iPhoneWebBrowserAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    iPhoneWebBrowserViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet iPhoneWebBrowserViewController *viewController;

@end

