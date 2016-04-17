//
//  ViewController.m
//  Block传值
//
//  Created by ziboow on 16/4/15.
//  Copyright © 2016年 abmas. All rights reserved.
//

#import "ViewController.h"
#import "ChooseController.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *showLabel;

@end

@implementation ViewController
- (IBAction)jump:(id)sender {
    ChooseController *chooseVC = [[ChooseController alloc] init];
    chooseVC.messageBlock = ^(NSString *message) {
        self.showLabel.text = message;
    };
    [self.navigationController pushViewController:chooseVC animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


@end






