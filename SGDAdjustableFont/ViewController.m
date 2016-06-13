//
//  ViewController.m
//  SGDAdjustableFont
//
//  Created by Shubham Daramwar on 6/13/16.
//  Copyright © 2016 Shubham Daramwar. All rights reserved.
//

#import "ViewController.h"
#import "UIFont+SGDScaledFont.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *scalledFontLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.scalledFontLabel.font = [UIFont scaledSystemFontWithStyle:Regular withSize:HeadingFont];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
