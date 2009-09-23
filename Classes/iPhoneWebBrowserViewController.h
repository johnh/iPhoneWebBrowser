//
//  iPhoneWebBrowserViewController.h
//  iPhoneWebBrowser
//
//  Created by John Haro on 9/20/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iPhoneWebBrowserViewController : UIViewController <UITextFieldDelegate, UIWebViewDelegate> {
	IBOutlet UIWebView *webView;
	IBOutlet UITextField *URLTextField;
	IBOutlet UIBarButtonItem *backButton;
	IBOutlet UIBarButtonItem *forwardButton;
	IBOutlet UIActivityIndicatorView *activityView;

}

@end

