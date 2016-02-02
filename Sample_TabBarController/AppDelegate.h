//
//  AppDelegate.h
//  Sample_TabBarController
//
//  Created by ShivKumar G on 14/01/16.
//  Copyright (c) 2016 Maple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>
{
    UITabBarController *tabBarControllerObj;
}

@property (strong, nonatomic) UIWindow *window;

@end

