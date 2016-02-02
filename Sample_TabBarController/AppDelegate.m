//
//  AppDelegate.m
//  Sample_TabBarController
//
//  Created by ShivKumar G on 14/01/16.
//  Copyright (c) 2016 Maple. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //StatusBar Code
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    UIView *addStatusBar = [[UIView alloc] init];
    addStatusBar.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 20);
    addStatusBar.backgroundColor = [UIColor orangeColor];
//    self.navigationController.navigationBar.tintAdjustmentMode = UIViewTintAdjustmentModeNormal;
//    self.navigationController.navigationBar.translucent = NO;
//    [[UINavigationController alloc]init].navigationBar.tintAdjustmentMode = UIViewTintAdjustmentModeNormal;
//    [[UINavigationController alloc]init].navigationBar.translucent = NO;
//    [[UINavigationController alloc]init].navigationBar.barTintColor = [UIColor yellowColor];
    
    //UITabBarController Code
    tabBarControllerObj = [[UITabBarController alloc]init];
    tabBarControllerObj.delegate = self;
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    ViewController *vc = (ViewController *)[storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    UINavigationController *nav1 = [[UINavigationController alloc]initWithRootViewController:vc];
    
    FirstViewController *fvc = (FirstViewController *)[storyboard instantiateViewControllerWithIdentifier:@"FirstViewController"];
    UINavigationController *nav12 = [[UINavigationController alloc]initWithRootViewController:fvc];
    
    SecondViewController *svc = (SecondViewController *)[storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    UINavigationController *nav3 = [[UINavigationController alloc]initWithRootViewController:svc];
    
    ThirdViewController *tvc = (ThirdViewController *)[storyboard instantiateViewControllerWithIdentifier:@"ThirdViewController"];
    UINavigationController *nav4 = [[UINavigationController alloc]initWithRootViewController:tvc];
    
    tabBarControllerObj.viewControllers = @[nav1,nav12,nav3,nav4];
    //tabBarControllerObj.selectedIndex = 3;
    
    UITabBarItem* theItem1 = [[UITabBarItem alloc] initWithTitle:@"Home" image:[UIImage imageNamed:@"home.png"] tag:1];
    [theItem1 setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]} forState:UIControlStateHighlighted];
    vc.tabBarItem = theItem1;
    UITabBarItem* theItem2 = [[UITabBarItem alloc] initWithTitle:@"Settings" image:[UIImage imageNamed:@"settings.png"] tag:2];
    [theItem2 setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]} forState:UIControlStateHighlighted];
    fvc.tabBarItem = theItem2;
    UITabBarItem* theItem3 = [[UITabBarItem alloc] initWithTitle:@"Message" image:[UIImage imageNamed:@"Message.png"] tag:3];
    [theItem3 setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]} forState:UIControlStateHighlighted];
    svc.tabBarItem = theItem3;
    UITabBarItem* theItem4 = [[UITabBarItem alloc] initWithTitle:@"Profile" image:[UIImage imageNamed:@"profile.png"] tag:4];
    [theItem4 setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]} forState:UIControlStateHighlighted];
    tvc.tabBarItem = theItem4;
    
    // Change the tab bar background
    //[[UITabBar appearance] setBackgroundImage:[UIImage imageNamed:@"tabbar.png"]];
    [[UITabBar appearance] setSelectionIndicatorImage:[UIImage imageNamed:@"but_bg.png"]];
    
    //Change the TabBarItem Color
    [[UITabBar appearance] setTintColor:[UIColor whiteColor]];
    
    self.window.rootViewController = tabBarControllerObj;
    [self.window.rootViewController.view addSubview:addStatusBar];
    
    
    return YES;
}
- (BOOL)tabBarController:(UITabBarController *)aTabBar
shouldSelectViewController:(UIViewController *)viewController
{
    //NSLog(@"shouldSelectViewController Clicked");
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
