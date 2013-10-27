//
//  CustomAlert.h
//  TestApp
//
//  Created by Shuvo on 10/27/13.
//  Copyright (c) 2013 Masud Shuvo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomAlert : UIView
{
    id delegate;
}
- (id)initWithTitle:(NSString *)title message:(NSString *)message delegate:aDelegate cancelButtonTitle:(NSString *)cancelButtonTitle;

- (void)showAlertView:(UIView *)aView;
@end

@protocol CustomAlertViewDelegate
- (void)customAlertView:(CustomAlert *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex;
@end


