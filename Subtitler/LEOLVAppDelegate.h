//
//  LEOLVAppDelegate.h
//  Subtitler
//
//  Created by Yong Lv on 2/15/14.
//  Copyright (c) 2014 lveyo. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface LEOLVAppDelegate : NSObject <NSApplicationDelegate>

{
    IBOutlet NSButton *getBtn;
    IBOutlet NSButton *importBtn;
    IBOutlet NSTableView *filesTbaleView;
}

@property (assign) IBOutlet NSWindow *window;

-(IBAction)btnPress:(id)sender;
-(IBAction)importPress:(id)sender;

@end
