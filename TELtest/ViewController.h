//
//  ViewController.h
//  TelTest
//
//  Created by csdc-iMac on 15/8/25.
//  Copyright (c) 2015年 csdc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *phoneNumber;
@property (strong, nonatomic) IBOutlet UITextField *email;


- (IBAction)call:(id)sender;
- (IBAction)message:(id)sender;
- (IBAction)sendEmail:(id)sender;
@end

