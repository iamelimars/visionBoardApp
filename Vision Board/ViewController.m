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
    int count;


    
}

@end

@implementation ViewController
@synthesize myLabel, myNewLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    myLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, 100, 100)];
    myLabel.text = @"Drag Me";
    myLabel.textAlignment = NSTextAlignmentCenter;
    myLabel.userInteractionEnabled = YES;
    UITapGestureRecognizer *taptap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(labelDoubleTapped:)];
    [taptap setNumberOfTapsRequired:2];
    gesture = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(labelDragged:)];
    [myLabel addGestureRecognizer:taptap];
    [myLabel addGestureRecognizer:gesture];
    [self.visionView addSubview:myLabel];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)labelDoubleTapped:(UITapGestureRecognizer *)gesturee{
    
    self.textField.hidden = NO;
    
    //myNewLabel.textColor = [UIColor blueColor];
    UILabel *label = (UILabel*)[self.visionView viewWithTag:3];
    
    NSLog(@"Label double tapped %i", myNewLabel.tag);
    
    
    
}
-(void)labelDragged:(UIPanGestureRecognizer *)gesturee{
    
    UILabel *label = (UILabel *)gesturee.view;
    CGPoint translation = [gesturee translationInView:label];
    
    //Move Label
    label.center = CGPointMake(label.center.x + translation.x, label.center.y + translation.y);
    
    [gesturee setTranslation:CGPointZero inView:label];
    
}
- (IBAction)addPressed:(id)sender {
    self.textField.hidden = NO;
    [self.textField becomeFirstResponder];
    
    [self createNewLabel:myLabel];
    
}
-(void)createNewLabel: (UILabel *)newlabel{
    count ++;
    NSString *labelTitle = [NSString stringWithFormat:@"Drag Me %i", count];
    
    myNewLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, 100, 100)];
    myNewLabel.text = labelTitle;
    myNewLabel.tag = count;
    myNewLabel.textAlignment = NSTextAlignmentCenter;
    myNewLabel.userInteractionEnabled = YES;
    UITapGestureRecognizer *doubleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(labelDoubleTapped:)];
    UIPanGestureRecognizer *panNew = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(labelDragged:)];
    [doubleTap setNumberOfTapsRequired:2];
    [myNewLabel addGestureRecognizer:doubleTap];
    [myNewLabel addGestureRecognizer:panNew];
    [self.visionView addSubview:myNewLabel];
    
}

-(void)editLabelText: (UILabel *)label{
    
    
}

- (IBAction)savePressed:(id)sender {
    
    
}
- (IBAction)dismissKeyboard:(id)sender {
    
    myNewLabel.text = self.textField.text;
    
    self.textField.hidden = YES;
    [self resignFirstResponder];

}
@end
