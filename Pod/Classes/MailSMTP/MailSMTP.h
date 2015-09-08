//
//  MailSMTP.h
//  MailSMTP-Example
//
//  Created by Si Do Dinh on 9/4/15.
//  Copyright (c) 2015 Si Do Dinh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CFNetwork/CFNetwork.h>
#import "SKPSMTPMessage.h"

@class MailSMTP;

@protocol MailSMTPDelegate
@required

-(void)onSuccess:(NSString *)message;
-(void)onFailed:(NSString *)error;

@end

@interface MailSMTP : NSObject <SKPSMTPMessageDelegate>  {

}

@property(nonatomic, assign) id <MailSMTPDelegate> delegate;

@property(nonatomic, retain) NSString *hostname;
@property(nonatomic, retain) NSString *username;
@property(nonatomic, retain) NSString *password;
@property(nonatomic, retain) NSString *from;
@property(nonatomic, retain) NSString *to;
@property(nonatomic, retain) NSString *subject;
@property(nonatomic, retain) NSString *content;

- (void)sendMailSMTP;

@end
