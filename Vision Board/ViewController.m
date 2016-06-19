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
    
    UIPanGestureRecognizer *gesture = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(labelDragged:)];
    
    [myLabel addGestureRecognizer:gesture];
    [self.visionView addSubview:myLabel];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)labelDragged:(UIPanGestureRecognizer *)gesture{
    
    UILabel *label = (UILabel *)gesture.view;
    CGPoint translation = [gesture translationInView:label];
    
    //Move Label
    label.center = CGPointMake(label.center.x + translation.x, label.center.y + translation.y);
    
    [gesture setTranslation:CGPointZero inView:label];
    
}
- (IBAction)addPressed:(id)sender {
}

- (IBAction)savePressed:(id)sender {
}
@end
