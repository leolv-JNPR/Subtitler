//
//  LEOLVAppDelegate.m
//  Subtitler
//
//  Created by Yong Lv on 2/15/14.
//  Copyright (c) 2014 lveyo. All rights reserved.
//

#import "LEOLVAppDelegate.h"

@implementation LEOLVAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

-(IBAction)btnPress:(id)sender
{
    NSLog(@"brnPressed");
    NSMutableArray *arr = [[NSMutableArray alloc] init];
    [arr addObject:@"-c"];
    [arr addObject:@"/Users/lveyo/Projects/c_src/build.sh"];
    
    NSTask *task = [[NSTask alloc] init];
    [task setArguments:arr];
    [task setLaunchPath:@"/bin/sh"];
    [task launch];
    
}

-(IBAction)importPress:(id)sender
{
    NSOpenPanel* panel = [NSOpenPanel openPanel];
    
    // This method displays the panel and returns immediately.
    // The completion handler is called when the user selects an
    // item or cancels the panel.
    [panel beginWithCompletionHandler:^(NSInteger result){
        if (result == NSFileHandlingPanelOKButton) {
            NSURL*  theDoc = [[panel URLs] objectAtIndex:0];
            NSString* s = [theDoc path];
            NSLog(@"%@", s);
            // Open  the document.
        }
        
    }];
}

@end
