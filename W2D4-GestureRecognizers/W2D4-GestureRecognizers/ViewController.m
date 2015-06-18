//
//  ViewController.m
//  W2D4-GestureRecognizers
//
//  Created by Tim Mitra on 6/17/15.
//  Copyright (c) 2015 iT Guy Technologies. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)handlePan:(UIPanGestureRecognizer *)recognizer {
  
  CGPoint translation = [recognizer translationInView:self.view];
  recognizer.view.center = CGPointMake(recognizer.view.center.x + translation.x,
                                       recognizer.view.center.y + translation.y);
  [recognizer setTranslation:CGPointMake(0, 0) inView:self.view];
  
}

- (IBAction)handlePinch:(UIPinchGestureRecognizer *)recognizer {
  recognizer.view.transform = CGAffineTransformScale(recognizer.view.transform, recognizer.scale, recognizer.scale);
  recognizer.scale = 1;
}

- (IBAction)handleRotate:(UIRotationGestureRecognizer *)recognizer {
  recognizer.view.transform = CGAffineTransformRotate(recognizer.view.transform, recognizer.rotation);
  recognizer.rotation = 0;
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
