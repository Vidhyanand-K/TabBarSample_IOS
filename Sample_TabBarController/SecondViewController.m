//
//  SecondViewController.m
//  Sample_TabBarController
//
//  Created by ShivKumar G on 18/01/16.
//  Copyright (c) 2016 Maple. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if ([self respondsToSelector:@selector(edgesForExtendedLayout)]) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    
//    //self.navigationController.navigationBar.barTintColor = [UIColor redColor];
//    self.navigationController.navigationBar.tintAdjustmentMode = UIViewTintAdjustmentModeNormal;
//    self.navigationController.navigationBar.translucent = NO;

    
    namesArr = [NSArray arrayWithObjects:@"TCS", @"TVR", @"Anand", @"Anil",@"TCS", @"TVR", @"Anand", @"Anil",@"TCS", @"TVR", @"Anand", @"Anil",@"TCS", @"TVR", @"Anand", @"Anil",@"TCS", @"TVR", @"Anand", @"Anil", nil];
    
    //Registration NSNotificationCenter
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(noOfRows) name:@"NoOfRows" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(cellForRow) name:@"CellForRow" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didSelectRow) name:@"DidSelectRow" object:nil];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn2 setTitle:@"Done" forState:UIControlStateNormal];
    [btn2 setTintColor:[UIColor blueColor]];
    [btn2 addTarget:self action:@selector(doneBtnClicked) forControlEvents:UIControlEventTouchUpInside];
    [btn2 setFrame:CGRectMake(0, 0, 49, 32)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

//AutoLayOuts + Frames Settings
-(void)doneBtnClicked
{
    secondLbl.hidden = NO;
    tableview.frame = CGRectMake(self.view.frame.origin.x, secondLbl.frame.origin.y+secondLbl.frame.size.height, self.view.frame.size.width, self.view.frame.size.height-21);
}
#pragma mark -- NSNotificationCenter Methods
-(void)noOfRows
{
    NSLog(@"NoOfRows Called");
}
-(void)cellForRow
{
    NSLog(@"CellForRow Called");
}
-(void)didSelectRow
{
    NSLog(@"DidSelectRow Called");
    
    secondLbl.hidden = YES;
    tableview.frame = CGRectMake(self.view.frame.origin.x, secondLbl.frame.origin.y, self.view.frame.size.width, self.view.frame.size.height);
}

#pragma mark -- UITableView Delegate & DataSource Methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //Calling NSNotificationCenter
    [[NSNotificationCenter defaultCenter] postNotificationName:@"NoOfRows" object:nil];
    
    return namesArr.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Calling NSNotificationCenter
    [[NSNotificationCenter defaultCenter] postNotificationName:@"CellForRow" object:nil];
    
    static NSString *cellIdentifer = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifer];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifer];
    }
    
    cell.textLabel.text = namesArr[indexPath.row];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Calling NSNotificationCenter
    [[NSNotificationCenter defaultCenter] postNotificationName:@"DidSelectRow" object:nil];
}

@end
