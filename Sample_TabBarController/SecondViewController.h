//
//  SecondViewController.h
//  Sample_TabBarController
//
//  Created by ShivKumar G on 18/01/16.
//  Copyright (c) 2016 Maple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    IBOutlet UITableView *tableview;
    IBOutlet UILabel *secondLbl;
    NSArray *namesArr;
}

@end
