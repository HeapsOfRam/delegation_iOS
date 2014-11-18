//
//  ViewController.m
//  alert_view_delegation
//
//  Created by Ryan March on 11/18/14.
//  Copyright (c) 2014 Ryan March. All rights reserved.
//

#import "ViewController.h"
#import "alert_delegator.h"

@interface ViewController ()

@end

@implementation ViewController

alert_delegator *my_alert_delegator;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    my_alert_delegator = [[alert_delegator alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)login_user:(id)sender {
    my_alert_delegator.alert_id = 1;
    UIAlertView *greeting_alert = [[UIAlertView alloc] initWithTitle:@"Welcome"
                                                             message:@"Would you like to receive Push Notifications?"
                                                            delegate:my_alert_delegator
                                                   cancelButtonTitle:@"No"
                                                   otherButtonTitles:@"Sure", @"Maybe", nil];
    [greeting_alert show];

}

- (IBAction)get_pizza:(id)sender {
    my_alert_delegator.alert_id = 2;
    UIAlertView *pizza_alert = [[UIAlertView alloc] initWithTitle:@"Welcome"
                                                             message:@"What topping do you want?"
                                                            delegate:my_alert_delegator
                                                   cancelButtonTitle:@"Nothing"
                                                   otherButtonTitles:@"Anchovies", @"Mushrooms", nil];
    [pizza_alert show];
}

//-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
//    NSLog(@"User clicked on button %i", (int)buttonIndex);
//}

@end
