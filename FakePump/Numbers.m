//
//  Numbers.m
//  FakePump
//
//  Created by Dennis Burton on 8/5/12.
//  Copyright (c) 2012 Dennis Burton. All rights reserved.
//

#import "Numbers.h"

@implementation Numbers
@synthesize BgNumber = _BgNumber;
@synthesize Carbs = _Carbs;

@synthesize Sensitivity;
-(void)setSensitivity:(NSNumber *)sensitivity {
  [[NSUserDefaults standardUserDefaults] setDouble:[sensitivity doubleValue]  forKey:@"Sensitivity"];
}
-(NSNumber *)Sensitivity {
  NSNumber *result = [[NSNumber alloc] initWithDouble:[[NSUserDefaults standardUserDefaults] doubleForKey:@"Sensitivity"]];
  return result;
}

@synthesize CarbRatio = _CarbRatio;
-(void)setCarbRatio:(NSNumber *)carbRatio {
  [[NSUserDefaults standardUserDefaults] setDouble:[carbRatio doubleValue] forKey:@"CarbRatio"];
}
-(NSNumber *)CarbRatio {
  NSNumber *result = [[NSNumber alloc] initWithDouble:[[NSUserDefaults standardUserDefaults] doubleForKey:@"CarbRatio"]];
  return result;
}

@synthesize TargetBg = _TargetBg;
-(void)setTargetBg:(NSNumber *)targetBg {
  [[NSUserDefaults standardUserDefaults] setDouble:[targetBg doubleValue] forKey:@"TargetBG"];
}
-(NSNumber *)TargetBg {
  NSNumber *result = [[NSNumber alloc] initWithDouble:[[NSUserDefaults standardUserDefaults] doubleForKey:@"TargetBG"]];
  return result;
}

@synthesize Range = _Range;
-(void)setRange:(NSNumber *)range {
  [[NSUserDefaults standardUserDefaults] setDouble:[range doubleValue] forKey:@"Range"];
}
-(NSNumber *)Range {
  NSNumber *result = [[NSNumber alloc] initWithDouble:[[NSUserDefaults standardUserDefaults] doubleForKey:@"Range"]];
  return result;
}

@end
