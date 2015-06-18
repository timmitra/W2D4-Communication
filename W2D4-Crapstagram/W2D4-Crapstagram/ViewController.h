//
//  ViewController.h
//  Crapstagram
//
//  Created by Ian MacKinnon on 2014-10-16.
//  Copyright (c) 2014 Ian MacKinnon. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController /*<UIImagePickerControllerDelegate, UINavigationControllerDelegate >*/

@property(nonatomic, strong) IBOutlet UIImageView *imageView;

-(IBAction) takePhoto:(id)sender;

@end