//
//  ViewController.m
//  Messenger
//
//  Created by Ignacio Romero Z. on 4/8/15.
//  Copyright (c) 2015 Slack Technologies, Inc. All rights reserved.
//

#import "ViewController.h"

#import "MessageViewController.h"


@implementation ViewController

- (IBAction)showMessages:(id)sender
{
//    [self performSegueWithIdentifier:@"show_messages" sender:sender];
	MessageViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Message"];
	[viewController loadViewIfNeeded];
	viewController.hidesBottomBarWhenPushed = NO;
	
	dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 1 * NSEC_PER_SEC), dispatch_get_main_queue(), ^(void){
		[self showViewController:viewController sender:sender];
	});
}

@end
