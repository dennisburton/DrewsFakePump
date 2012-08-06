//
//  SettingsViewController.m
//  FakePump
//
//  Created by Dennis Burton on 8/5/12.
//  Copyright (c) 2012 Dennis Burton. All rights reserved.
//

#import "SettingsViewController.h"
#import "Numbers.h"
#import "ResultsViewController.h"

@interface SettingsViewController () <UITextFieldDelegate>

@end

@implementation SettingsViewController
@synthesize sensitivityNumber;
@synthesize carbRatio;
@synthesize targetBg;
@synthesize range;

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
  sensitivityNumber.delegate = self;
  carbRatio.delegate = self;
  targetBg.delegate = self;
  range.delegate = self;
  
  Numbers *numbers = [[Numbers alloc]init];
  sensitivityNumber.text = [numbers.Sensitivity stringValue];
  carbRatio.text = [numbers.CarbRatio stringValue];
  targetBg.text = [numbers.TargetBg stringValue];
  range.text = [numbers.Range stringValue];
}

- (void)viewDidUnload
{
    [self setSensitivityNumber:nil];
    [self setCarbRatio:nil];
    [self setTargetBg:nil];
    [self setRange:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
  if( textField == sensitivityNumber) [sensitivityNumber resignFirstResponder];
  if( textField == carbRatio) [carbRatio resignFirstResponder];
  if( textField == targetBg) [targetBg resignFirstResponder];
  if( textField == range) [range resignFirstResponder];
  
  return YES;
}

- (IBAction)save:(UIButton*)sender {
  NSNumberFormatter *formatter = [[NSNumberFormatter alloc]init];
  [formatter setNumberStyle:NSNumberFormatterDecimalStyle];

  Numbers *numbers = [[Numbers alloc]init];
  numbers.Sensitivity = [formatter numberFromString:sensitivityNumber.text];
  numbers.CarbRatio = [formatter numberFromString:carbRatio.text];
  numbers.TargetBg = [formatter numberFromString:targetBg.text];
  numbers.Range = [formatter numberFromString:range.text];
}

@end
