//
//  MailSMTPVC.h
//  MailSMTP-Example
//
//  Created by Si Do Dinh on 9/7/15.
//  Copyright (c) 2015 Si Do Dinh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MailSMTP.h"

@interface MailSMTPVC : UITableViewController <MailSMTPDelegate> {
    
}

@property (weak, nonatomic) IBOutlet UITextField *toTextField;
@property (weak, nonatomic) IBOutlet UITextField *subjectTextField;
@property (weak, nonatomic) IBOutlet UITextView *contentTextView;

@end
