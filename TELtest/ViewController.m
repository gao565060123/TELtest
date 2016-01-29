//
//  ViewController.m
//  TelTest
//
//  Created by csdc-iMac on 15/8/25.
//  Copyright (c) 2015年 csdc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)call:(id)sender {
    
    // 打电话
    if (![self.phoneNumber.text isEqualToString:@""]) {// 号码不为空
        // 方法一：使用webView。会弹出确定拨打的提示，打完会回到应用，推荐
        UIWebView *callWebview =[[UIWebView alloc] init];
        NSURL *telURL =[NSURL URLWithString:[NSString stringWithFormat:@"tel:%@",self.phoneNumber.text]];
        [callWebview loadRequest:[NSURLRequest requestWithURL:telURL]];
//        - (void)loadHTMLString:(NSString *)string baseURL:(nullable NSURL *)baseURL;
      
        [self.view addSubview:callWebview];
        
        // 方法二：使用UIApplication。无提示，打完停在通讯录
//        [[UIApplication sharedApplication] openURL:telURL];
    }
}

- (IBAction)message:(id)sender {
    
    // 发短信
    if (![self.phoneNumber.text isEqualToString:@""]) {// 号码不为空
        // 方法一：使用webView。跳到短信界面，推荐
        UIWebView *smsWebview =[[UIWebView alloc] init];
        NSURL *telURL =[NSURL URLWithString:[NSString stringWithFormat:@"sms:%@",self.phoneNumber.text]];
        [smsWebview loadRequest:[NSURLRequest requestWithURL:telURL]];
        [self.view addSubview:smsWebview];
        
        // 方法二：使用UIApplication。直接发送，后台发送
        [[UIApplication sharedApplication] openURL:telURL];
    }
    
}

- (IBAction)sendEmail:(id)sender {
    
    if (![self.email.text isEqualToString:@""]) {// 号码不为空
        UIWebView *emailWebview =[[UIWebView alloc] init];
        NSURL *emailURL =[NSURL URLWithString:[NSString stringWithFormat:@"mailto:%@",self.email.text]];
        [emailWebview loadRequest:[NSURLRequest requestWithURL:emailURL]];
        [self.view addSubview:emailWebview];
    }
    
}
@end
