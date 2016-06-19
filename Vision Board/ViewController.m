//
//  ViewController.m
//  Vision Board
//
//  Created by iMac on 6/19/16.
//  Copyright © 2016 Marshall. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize myLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"Begin");
    
    myLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, 100, 100)];
    myLabel.text = @"Drag Me";
    myLabel.textAlignment = NSTextAlignmentCenter;
    myLabel.userInteractionEnabled = YES;
    
    [self.visionView addSubview:myLabel];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addPressed:(id)sender {
}

- (IBAction)savePressed:(id)sender {
}
@end
