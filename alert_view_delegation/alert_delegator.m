//
//  alert_delegator.m
//  alert_view_delegation
//
//  Created by Ryan March on 11/18/14.
//  Copyright (c) 2014 Ryan March. All rights reserved.
//

#import "alert_delegator.h"

@implementation alert_delegator

@synthesize alert_id;

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(alert_id == 1){
    if(buttonIndex == 0){
        NSLog(@"User does NOT want Push Notifications");
    }
    else{
        NSLog(@"User DOES want Push Notifications");
    }
    }
    else{
        if(alert_id == 2){
            if(buttonIndex == 0){
                NSLog(@"User wants a plain pizza");
            }
            else{
                if(buttonIndex == 1){
                    NSLog(@"User wants Anchovies");
                }
                else{
                    if(buttonIndex == 2){
                        NSLog(@"User wants mushrooms");
                    }
                }
            }
        }
    }
}

@end
