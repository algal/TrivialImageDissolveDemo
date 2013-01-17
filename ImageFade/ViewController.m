//
//  ViewController.m
//  ImageFade
//
//  Created by Alexis Gallagher on 2013-01-17.
//  Copyright (c) 2013 Foxtrot Studios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong,nonatomic) UIImage * imageOne;
@property (strong,nonatomic) UIImage * imageTwo;
@end

@implementation ViewController

- (void)viewDidLoad
{
  self.imageOne = [UIImage imageNamed:@"mandel200x200.jpg"];
  self.imageTwo = [UIImage imageNamed:@"mandel_images.png"];
  
  self.imageView.image = self.imageOne;
  [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)handleButtonTouch:(id)sender {
  
  UIImage * toImage = ([self.imageView.image isEqual:self.imageOne]) ? self.imageTwo : self.imageOne;
  
  [UIView transitionWithView:self.imageView
                    duration:5.0f
                     options:UIViewAnimationOptionTransitionCrossDissolve
                  animations:^{
                    self.imageView.image = toImage;
                  }
                  completion:NULL];
}
@end
