//
//  ResultsViewController.m
//  FakePump
//
//  Created by Dennis Burton on 8/5/12.
//  Copyright (c) 2012 Dennis Burton. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()
@property Numbers *numberData;
@end

@implementation ResultsViewController
@synthesize resultText;
@synthesize typeText;
@synthesize numberData;

-(void)setNumbers:(Numbers *)numbers {
  numberData = numbers;
}

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
  double bgNumber = [numberData.BgNumber doubleValue];
  double carbs = [numberData.Carbs doubleValue];
  double target = [numberData.TargetBg doubleValue];
  double sensitivity = [numberData.Sensitivity doubleValue];
  double carbRatio = [numberData.CarbRatio doubleValue];
  
  
  double correctionAmount = bgNumber - target;
  double unitsCorrection = correctionAmount/sensitivity;
  
  double carbsBolus = carbs/carbRatio;
  double totalAmount = unitsCorrection + carbsBolus;
  
  double correction = 0.0;
  if( totalAmount > 0 ){
    correction = totalAmount;
    typeText.text = @"Insulin";
  }
  else {
    correction = -1 * totalAmount * carbRatio;
    
    typeText.text = @"Carbs";
  }
  
  
  
  
  resultText.text = [NSString stringWithFormat:@"%.2f", correction];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [self setResultText:nil];
  [self setTypeText:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
