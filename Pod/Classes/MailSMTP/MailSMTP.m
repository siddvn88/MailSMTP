//
//  MailSMTP.m
//  MailSMTP-Example
//
//  Created by Si Do Dinh on 9/4/15.
//  Copyright (c) 2015 Si Do Dinh. All rights reserved.
//

#import "MailSMTP.h"

@interface MailSMTP ()

@property (nonatomic, retain) SKPSMTPMessage * skpSMTP;

@end

@implementation MailSMTP

@synthesize delegate, hostname, username, password, from, to, subject, content;

- (void) sendMailSMTP {
    self.skpSMTP = [[SKPSMTPMessage alloc] init];
    self.skpSMTP.delegate = self;
    self.skpSMTP.fromEmail = from;
    self.skpSMTP.toEmail = to;
    self.skpSMTP.relayHost = hostname;
    self.skpSMTP.requiresAuth = YES;
    if (self.skpSMTP.requiresAuth) {
        self.skpSMTP.login = username;
        self.skpSMTP.pass = password;
    }
    self.skpSMTP.wantsSecure = YES;
    self.skpSMTP.subject = subject;
    
    NSDictionary *plainPart = [NSDictionary dictionaryWithObjectsAndKeys:@"text/plain; charset=UTF-8", kSKPSMTPPartContentTypeKey,
                               content, kSKPSMTPPartMessageKey, @"8bit", kSKPSMTPPartContentTransferEncodingKey,nil];
    
    self.skpSMTP.parts = [NSArray arrayWithObjects:plainPart,nil,nil];
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [self.skpSMTP send];
    });
}

- (void)messageSent:(SKPSMTPMessage *)message {
    [delegate onSuccess:@"Message sent success"];
}

- (void)messageFailed:(SKPSMTPMessage *)message error:(NSError *)error {
    [delegate onFailed:@"Message send failed"];
}

@end