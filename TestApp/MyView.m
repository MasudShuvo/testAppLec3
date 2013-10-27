//
//  MyView.m
//  TestApp
//
//  Created by Shuvo on 10/23/13.
//  Copyright (c) 2013 Masud Shuvo. All rights reserved.
//

#import "MyView.h"
#import "CustomAlert.h"
@interface MyView () <UIAlertViewDelegate,CustomAlertViewDelegate>

@end

@implementation MyView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)customAlertView:(CustomAlert *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"Button Pressed %i",buttonIndex);
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Test Title" message:@"This is a test alert view" delegate:self cancelButtonTitle:nil otherButtonTitles:nil];
//    [alertView show];
    
    // Do any additional setup after loading the view from its nib.
    
    CustomAlert *customAlert = [[CustomAlert alloc] initWithTitle:@"Test" message:@"This is a testing" delegate:self cancelButtonTitle:@"Ok"];
    [customAlert showAlertView:self.view];
    
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"Button Index %i",buttonIndex);
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
