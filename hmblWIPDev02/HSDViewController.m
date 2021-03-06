//
//  HSDViewController.m
//  hmblWIPDev02
//
//  Created by Hannah Douglas on 3/5/14.
//  Copyright (c) 2014 douglas.hannah. All rights reserved.
//

#import "HSDViewController.h"

@interface HSDViewController ()

// Background image
@property (nonatomic, strong) UIImageView *backgroundImageView;
// Facebook image
@property (nonatomic, strong) UIImageView *facebookImageView;
// Google plus image
@property (nonatomic, strong) UIImageView *gooplusImageView;
// hmbl
@property (nonatomic, strong) UILabel *titleLabel;
// registration with apis
@property (nonatomic, strong) UILabel *regLabel;
// registration blank slate
//@property (nonatomic, strong) UILabel *newRegLabel;

@end

@implementation HSDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGPoint screenCenter = (CGPoint) {
        .x = CGRectGetMidX(screenRect),
        .y = CGRectGetMidY(screenRect)
    };
    
    CGFloat screenHeight = CGRectGetHeight(screenRect);
    
    // Handle the background image.
    UIImage *image = [UIImage imageNamed:@"hmblstartscreenFLAT.png"];
    self.backgroundImageView = [[UIImageView alloc] initWithImage:image];
    // Handle facebook image.
    UIImage *fbimage = [UIImage imageNamed:@"humble_facebookCircle.png"];
    self.facebookImageView = [[UIImageView alloc] initWithImage:fbimage];
    // Handle gooplus image.
    UIImage *goimage = [UIImage imageNamed:@"humble_googleplusCircle.png"];
    self.gooplusImageView = [[UIImageView alloc] initWithImage:goimage];
    
    // Set up titleLabel
    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    self.titleLabel.text = @"hmbl";
    self.titleLabel.textColor = [UIColor whiteColor];
    self.titleLabel.font = [UIFont fontWithName:@"Helvetica" size:100.0];
    [self.titleLabel sizeToFit];
    
    self.regLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    self.regLabel.text = @"Register now with";
    self.regLabel.textColor = [UIColor whiteColor];
    self.regLabel.font = [UIFont fontWithName:@"Helvetica" size:15.0];
    [self.regLabel sizeToFit];
    
    //
    
    // Place the labels
    self.titleLabel.center = (CGPoint) {
        .x = screenCenter.x,
        .y = 80.0
    };
    self.regLabel.center = (CGPoint) {
        .x = screenCenter.x,
        .y = 180.0
    };
    
    self.facebookImageView.center = (CGPoint) {
        .x = 115.0,
        .y = screenCenter.y
    };
    
    self.gooplusImageView.center = (CGPoint) {
        .x = 315.0,
        .y = screenCenter.y
    };
    
//    //set contentMode to scale aspect to fit
//    self.facebookImageView.contentMode = UIViewContentModeScaleAspectFit;
    //change width of frame
    CGRect newFrame1 = self.facebookImageView.frame;
    newFrame1.size.width = 100;
    newFrame1.size.height = 100;
    [self.facebookImageView setFrame:newFrame1];
    
//    //set contentMode to scale aspect to fit
//    self.gooplusImageView.contentMode = UIViewContentModeScaleAspectFit;
    //change width of frame
    CGRect newFrame2 = self.gooplusImageView.frame;
    newFrame2.size.width = 100;
    newFrame2.size.height = 100;
    [self.gooplusImageView setFrame:newFrame2];
    
    // Align to center.
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.regLabel.textAlignment = NSTextAlignmentCenter;
    
    // Display everything.
    [self.view addSubview:self.backgroundImageView];
    [self.view addSubview:self.facebookImageView];
    [self.view addSubview:self.gooplusImageView];
    [self.view addSubview:self.titleLabel];
    [self.view addSubview:self.regLabel];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
