//
//  BGViewController.m
//  FakePump
//
//  Created by Dennis Burton on 8/5/12.
//  Copyright (c) 2012 Dennis Burton. All rights reserved.
//

#import "BGViewController.h"

@interface BGViewController () <UITextFieldDelegate>

@end

@implementation BGViewController
@synthesize BgNumber;

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return YES;// (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)viewDidLoad
{
  [super viewDidLoad];
	BgNumber.delegate = self;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
  if( textField == BgNumber) [BgNumber resignFirstResponder];
  return YES;
}
- (IBAction)EnterBg {
  // create the bg model
  // call the seque to the results screen
}


@end
