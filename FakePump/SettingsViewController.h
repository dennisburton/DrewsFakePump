//
//  SettingsViewController.h
//  FakePump
//
//  Created by Dennis Burton on 8/5/12.
//  Copyright (c) 2012 Dennis Burton. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *sensitivityNumber;
@property (weak, nonatomic) IBOutlet UITextField *carbRatio;
@property (weak, nonatomic) IBOutlet UITextField *targetBg;
@property (weak, nonatomic) IBOutlet UITextField *range;

@end
