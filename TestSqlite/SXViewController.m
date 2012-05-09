//
//  SXViewController.m
//  TestSqlite
//
//  Created by Shin Suo on 12-5-9.
//  Copyright (c) 2012年 CocoaChina. All rights reserved.
//

#import "SXViewController.h"

#include <sqlite3.h>

@interface SXViewController ()

@end

@implementation SXViewController
@synthesize webView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    NSLog(@"%f",[[NSDate date] timeIntervalSince1970]);
    
    NSString *createSQL = [NSString stringWithFormat:@"create table if not exists EventRecord("
                           "id INTEGER PRIMARY KEY AUTOINCREMENT,"
                           "type int,"
                           "fr varchar,"
                           "to varchar,"
                           "n varchar,"
                           "t int,"
                           "dn int,"
                           "dm float,"
                           "cu varchar,"
                           "ds int,"
                           "spt int,"
                           "tp int,"
                           "vpos int)"];
    NSLog(@"createSQL:%@",createSQL);
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"display_ad" ofType:@"htm"]]];
    [self.webView loadRequest:request];
}

- (void)viewDidUnload
{
    [self setWebView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)dealloc {
    [webView release];
    [super dealloc];
}
@end
