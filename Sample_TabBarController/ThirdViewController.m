//
//  ThirdViewController.m
//  Sample_TabBarController
//
//  Created by ShivKumar G on 18/01/16.
//  Copyright (c) 2016 Maple. All rights reserved.
//

#import "ThirdViewController.h"
#import "FourthViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    //StatusBar Code
//    self.navigationController.navigationBar.backgroundColor = [UIColor redColor];
//    self.navigationController.navigationBar.tintAdjustmentMode = UIViewTintAdjustmentModeNormal;
//    self.navigationController.navigationBar.translucent = NO;
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)goToFourthView:(id)sender
{
    [self.navigationController pushViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"FourthViewController"] animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
