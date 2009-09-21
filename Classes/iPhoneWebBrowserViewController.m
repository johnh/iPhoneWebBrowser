//
//  iPhoneWebBrowserViewController.m
//  iPhoneWebBrowser
//
//  Created by John Haro on 9/20/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "iPhoneWebBrowserViewController.h"

@implementation iPhoneWebBrowserViewController

- (void) disableWebView {
	webView.userInteractionEnabled = NO;
	webView.alpha = 0.25;
}

- (void) enableWebView {
	webView.userInteractionEnabled = YES;
	webView.alpha = 1.0;
}

-(void) loadURLFromTextField{
	NSURL *url = [NSURL URLWithString:URLTextField.text];
	[webView loadRequest:[NSURLRequest requestWithURL:url]];
}

- (void) textFieldDidBeginEditing:(UITextField *)textField { 
	[self disableWebView];
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField {
	[self loadURLFromTextField];
	[textField resignFirstResponder];
	[self enableWebView];
	return YES;
}

- (void) resetButtons:(UIWebView *)theWebView {
	[backButton setEnabled:[theWebView canGoBack]];
	[forwardButton setEnabled:[theWebView canGoForward]];
}

- (void)webViewDidFinishLoad:(UIWebView *)theWebView {
	[self resetButtons:theWebView];
}



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	[self loadURLFromTextField];
}





/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
