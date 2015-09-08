//
//  MailSMTPVC.m
//  MailSMTP-Example
//
//  Created by Si Do Dinh on 9/7/15.
//  Copyright (c) 2015 Si Do Dinh. All rights reserved.
//

#import "MailSMTPVC.h"

NSString *const hostname = @"smtp.gmail.com";
NSString *const username = @"sidodinh@gmail.com";
NSString *const password = @"Haveaniceday@88";
NSString *const fromEmail = @"sidodinh@gmail.com";

@interface MailSMTPVC () {
    MailSMTP *smtp;
}

@end

@implementation MailSMTPVC

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onClickSendSMTP:(id)sender {
    smtp = [[MailSMTP alloc] init];
    smtp.delegate = self;
    smtp.hostname = hostname;
    smtp.username = username;
    smtp.password = password;
    smtp.from = fromEmail;
    smtp.to = self.toTextField.text;
    smtp.subject = self.subjectTextField.text;
    smtp.content = self.contentTextView.text;
    [smtp sendMailSMTP];
}

- (void) onSuccess:(NSString *)message {
    NSLog(@"Message sent success");
}

- (void) onFailed:(NSString *)error {
    NSLog(@"Message sent failed");
}

@end
