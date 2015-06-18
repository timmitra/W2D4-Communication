//
//  ViewController.m
//  Crapstagram
//
//  Created by Ian MacKinnon on 2014-10-16.
//  Copyright (c) 2014 Ian MacKinnon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

-(IBAction) takePhoto:(id)sender{
  
  UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
  
  imagePicker.delegate = self;
  [imagePicker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
  
  [self presentViewController:imagePicker animated:true completion:nil];
  
}


- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
  
  UIImage *originalImage = [info objectForKey:UIImagePickerControllerOriginalImage];
  
  [self.imageView setImage:originalImage];
  
  [picker dismissViewControllerAnimated:true completion:nil];
  
}

@end