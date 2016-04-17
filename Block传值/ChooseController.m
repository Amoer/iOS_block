//
//  ChooseController.m
//  Block传值
//
//  Created by ziboow on 16/4/15.
//  Copyright © 2016年 abmas. All rights reserved.
//

#import "ChooseController.h"

@interface ChooseController ()
@property (nonatomic, weak) UITextField *textField;
@end

@implementation ChooseController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"第二控制器";
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(70, 90, 200, 35)];
    self.textField = textField;
    textField.backgroundColor = [UIColor redColor];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:textField];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(90, 180, 70, 30)];
    btn.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:btn];
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
}

- (void)back {
    if (self.messageBlock) {
        self.messageBlock(self.textField.text);
    }
    [self.navigationController popViewControllerAnimated:YES];
}


@end








