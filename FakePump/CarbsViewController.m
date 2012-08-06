//
//  CarbsViewController.m
//  FakePump
//
//  Created by Dennis Burton on 8/5/12.
//  Copyright (c) 2012 Dennis Burton. All rights reserved.
//

#import "CarbsViewController.h"
#import "Numbers.h"
#import "ResultsViewController.h"

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

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  Numbers *numbers = [[Numbers alloc] init];
  
  NSNumberFormatter *formatter = [[NSNumberFormatter alloc]init];
  [formatter setNumberStyle:NSNumberFormatterDecimalStyle];
  
  numbers.BgNumber = [formatter numberFromString:BgNumber.text];
  numbers.Carbs = [formatter numberFromString:CarbNumber.text];
  
  [segue.destinationViewController setNumbers:numbers];
}

@end
