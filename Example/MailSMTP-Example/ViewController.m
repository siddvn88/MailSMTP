//
//  ViewController.m
//  MailSMTP-Example
//
//  Created by Si Do Dinh on 9/4/15.
//  Copyright (c) 2015 Si Do Dinh. All rights reserved.
//

#import "ViewController.h"
#import "MailSMTP.h"
#import <CFNetwork/CFNetwork.h>

@interface ViewController ()

@property (nonatomic, retain) MailSMTP * smtp;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)sendEmailSMTP:(id)sender {
    NSLog(@"Clicked send email smtp");
}

- (IBAction)onClickSendEmail:(id)sender {
    self.smtp = [[MailSMTP alloc] init];
    self.smtp.delegate = self;
    [self.smtp sendMailSMTP];
}

- (void)onSuccess:(NSString *)message {
//    NSLog(@"%@", me);
}

- (void)onFailed:(NSString *)message {
//    NSLog(message);
}

@end
