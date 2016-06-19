//
//  ViewController.h
//  Vision Board
//
//  Created by iMac on 6/19/16.
//  Copyright © 2016 Marshall. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) UILabel *myLabel; 
@property (weak, nonatomic) IBOutlet UIView *visionView;
- (IBAction)addPressed:(id)sender;
- (IBAction)savePressed:(id)sender;

@end

