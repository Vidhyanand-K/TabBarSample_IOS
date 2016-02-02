//
//  FourthViewController.h
//  Sample_TabBarController
//
//  Created by ShivKumar G on 18/01/16.
//  Copyright (c) 2016 Maple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface FourthViewController : UIViewController<CLLocationManagerDelegate, UIAlertViewDelegate>
{
    IBOutlet UILabel *latitudeLabel;
    IBOutlet UILabel *longitudeLabel;
    IBOutlet UILabel *longitudeTitleLbl;
    IBOutlet UILabel *latitudeTitleLbl;
    
    CLLocationManager *locationManager;
    
    IBOutlet UILabel *fourthLbl;
    IBOutlet UIView *myView;
}

@end
