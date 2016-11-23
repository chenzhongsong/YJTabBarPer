//
//  ViewController.m
//  YJTabBarPer
//
//  Created by houdage on 15/11/17.
//  Copyright © 2015年 YJHou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    btn.center = CGPointMake(self.view.bounds.size.width / 2, 100);
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
}

- (void)btnAction{
    if (self.navigationController) {
        [self.navigationController pushViewController:[ViewController new] animated:NO];
    } else {
        [self dismissViewControllerAnimated:YES completion:nil];
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
