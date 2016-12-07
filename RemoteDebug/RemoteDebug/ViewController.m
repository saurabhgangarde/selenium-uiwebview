//
//  ViewController.m
//  RemoteDebug
//
//  Created by saurabh gangarde on 09/08/12.
//  Copyright (c) 2012 saurabhg. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize webView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString* filePath = [self pathForWebResource:@"index.html" inDirectory:@"www"];
    
    NSLog(@"Path: %@", filePath);
    
    NSURL *appURL = [NSURL fileURLWithPath:filePath];
    NSURLRequest *appReq = [NSURLRequest requestWithURL:appURL];
    [self.webView loadRequest:appReq];
}

/**
 * This method is already available with PhoneGap. But as I am not using PhoneGap so I am copying it
 * as helper method here.
 */
-(NSString*) pathForWebResource: (NSString*) resource inDirectory: (NSString*) directory{
    NSMutableArray *directoryParts = [NSMutableArray arrayWithArray:[resource componentsSeparatedByString:@"/"]];
    [directoryParts removeLastObject];
    
    NSString* directoryPartsJoined =[directoryParts componentsJoinedByString:@"/"];
    NSString* directoryStr = directory;
    
    if ([directoryPartsJoined length] > 0) {
        directoryStr = [NSString stringWithFormat:@"%@/%@", directory, [directoryParts componentsJoinedByString:@"/"]];
    }
    
    NSLog(@"directoryStr: %@", directoryStr);
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:resource ofType:@"" inDirectory:directoryStr];
    
    return filePath;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

@end
