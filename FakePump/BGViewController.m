//
//  BGViewController.m
//  FakePump
//
//  Created by Dennis Burton on 8/5/12.
//  Copyright (c) 2012 Dennis Burton. All rights reserved.
//

#import "BGViewController.h"
#import "Numbers.h"
#import "ResultsViewController.h"


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

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  Numbers *numbers = [[Numbers alloc] init];

  NSNumberFormatter *formatter = [[NSNumberFormatter alloc]init];
  [formatter setNumberStyle:NSNumberFormatterDecimalStyle];
  
  numbers.BgNumber = [formatter numberFromString:BgNumber.text];
  
  [segue.destinationViewController setNumbers:numbers];
}


@end
