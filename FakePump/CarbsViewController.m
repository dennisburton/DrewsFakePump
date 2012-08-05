//
//  CarbsViewController.m
//  FakePump
//
//  Created by Dennis Burton on 8/5/12.
//  Copyright (c) 2012 Dennis Burton. All rights reserved.
//

#import "CarbsViewController.h"

@interface CarbsViewController () <UITextFieldDelegate>

@end

@implementation CarbsViewController
@synthesize BgNumber;
@synthesize CarbNumber;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
  BgNumber.delegate = self;
  CarbNumber.delegate = self;
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
  [self setBgNumber:nil];
  [self setCarbNumber:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
  if( textField == BgNumber ) [BgNumber resignFirstResponder];
  if( textField == CarbNumber) [CarbNumber resignFirstResponder];
  
  return YES;
}

- (IBAction)EnterCarbs:(UIButton *)sender {
}

@end
