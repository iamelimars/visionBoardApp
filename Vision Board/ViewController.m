//
//  ViewController.m
//  Vision Board
//
//  Created by iMac on 6/19/16.
//  Copyright © 2016 Marshall. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    UIPanGestureRecognizer *gesture;
    
    
}
@end

@implementation ViewController
@synthesize myLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    myLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, 100, 100)];
    myLabel.text = @"Drag Me";
    myLabel.textAlignment = NSTextAlignmentCenter;
    myLabel.userInteractionEnabled = YES;
    
    gesture = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(labelDragged:)];
    
    [myLabel addGestureRecognizer:gesture];
    [self.visionView addSubview:myLabel];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)labelDragged:(UIPanGestureRecognizer *)gesturee{
    
    UILabel *label = (UILabel *)gesturee.view;
    CGPoint translation = [gesturee translationInView:label];
    
    //Move Label
    label.center = CGPointMake(label.center.x + translation.x, label.center.y + translation.y);
    
    [gesturee setTranslation:CGPointZero inView:label];
    
}
- (IBAction)addPressed:(id)sender {
    UILabel *myNewLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, 100, 100)];
    myNewLabel.text = @"Drag Me 2";
    myNewLabel.textAlignment = NSTextAlignmentCenter;
    myNewLabel.userInteractionEnabled = YES;
    UIPanGestureRecognizer *panNew = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(labelDragged:)];
    
    [myNewLabel addGestureRecognizer:panNew];
    [self.visionView addSubview:myNewLabel];
    
}

- (IBAction)savePressed:(id)sender {
    
    
}
@end
