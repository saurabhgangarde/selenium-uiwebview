/*
 Licensed to the Apache Software Foundation (ASF) under one
 or more contributor license agreements.  See the NOTICE file
 distributed with this work for additional information
 regarding copyright ownership.  The ASF licenses this file
 to you under the Apache License, Version 2.0 (the
 "License"); you may not use this file except in compliance
 with the License.  You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing,
 software distributed under the License is distributed on an
 "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 KIND, either express or implied.  See the License for the
 specific language governing permissions and limitations
 under the License.
 */

//
//  MainViewController.h
//  SamplePG
//
//  Created by saurabh gangarde on 03/08/12.
//  Copyright saurabhg 2012. All rights reserved.
//

#import "MainViewController.h"

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return [super shouldAutorotateToInterfaceOrientation:interfaceOrientation];
}

//#pragma UIWebViewDelegate implementation
//
//- (void) webViewDidFinishLoad:(UIWebView*) theWebView
//{
//    NSLog(@"in function webViewDidFinishLoad");
//}
//
//-(void) webViewDidStartLoad:(UIWebView *)webView{
//    NSLog(@"in function webViewDidStartLoad");
//}
//
//// You can rest of the UIWebViewDelegate method if you need.
//- (BOOL)webView:(UIWebView *)theWebView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
//{
//    /* If hyperlink is clicked in application you expect that to open in external browser. This code can do that job */
//    //    if (![[[request URL] absoluteString] hasPrefix:@"webdriver"]){
//    //        if (![[UIApplication sharedApplication] openURL:[request URL]])
//    //            NSLog(@"%@%@",@"Failed to open url:",[[request URL] description]);
//    //        return NO;
//    //    }
//    
//    return [super webView:theWebView shouldStartLoadWithRequest:request navigationType:navigationType];
//}

@end
