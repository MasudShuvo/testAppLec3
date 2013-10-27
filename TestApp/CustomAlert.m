//
//  CustomAlert.m
//  TestApp
//
//  Created by Shuvo on 10/27/13.
//  Copyright (c) 2013 Masud Shuvo. All rights reserved.
//

#import "CustomAlert.h"

@implementation CustomAlert

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithTitle:(NSString *)title message:(NSString *)message delegate:aDelegate cancelButtonTitle:(NSString *)cancelButtonTitle
{
    delegate = aDelegate;
    
    self = [super initWithFrame:CGRectMake(60, 150, 200, 200)];
    if(self)
    {
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background.png"]];
        imageView.frame = self.bounds;
        [self addSubview:imageView];
        
        self.clipsToBounds = YES;
    
        UIButton *cancelButton = [[UIButton alloc] initWithFrame:CGRectMake(150, 150, 50, 50)];
        [cancelButton setBackgroundImage:[UIImage imageNamed:@"ok.png"] forState:UIControlStateNormal];
        cancelButton.tag = 0;
        
        UILabel *buttonTitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 30, 20)];
        buttonTitleLabel.text = cancelButtonTitle;
        buttonTitleLabel.backgroundColor = [UIColor clearColor];
        [cancelButton addSubview:buttonTitleLabel];
        [cancelButton addTarget:self action:@selector(cancelButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:cancelButton];
        
        UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 20)];
        titleLabel.backgroundColor = [UIColor clearColor];
        titleLabel.text = title;
        titleLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:titleLabel];
        
        UILabel *msgLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, 200, 20)];
        msgLabel.backgroundColor = [UIColor clearColor];
        msgLabel.text = message;
        msgLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:msgLabel];
    }
    return self;
}

- (void)showAlertView:(UIView *)aView
{
    if([aView isKindOfClass:[UIView class]])
    {
        [aView addSubview:self];
    }
}

- (void)cancelButtonPressed:(id)sender
{
    UIButton *pressedButton = (UIButton *)sender;
    
    if([delegate respondsToSelector:@selector(customAlertView:clickedButtonAtIndex:)])
    {
        [delegate customAlertView:self clickedButtonAtIndex:pressedButton.tag];
    }
    [self removeFromSuperview];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
