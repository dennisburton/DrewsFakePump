//
//  ResultsViewController.h
//  FakePump
//
//  Created by Dennis Burton on 8/5/12.
//  Copyright (c) 2012 Dennis Burton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Numbers.h"

@interface ResultsViewController : UIViewController
-(void)setNumbers:(Numbers *)numbers;
@property (weak, nonatomic) IBOutlet UILabel *resultText;

@end
