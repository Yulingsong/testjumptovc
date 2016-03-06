//
//  BViewController.m
//  testjumptovc
//
//  Created by yulingsong on 16/3/4.
//  Copyright © 2016年 yulingsong. All rights reserved.
//

#import "BViewController.h"
#import "CViewController.h"

@interface BViewController ()

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.3];
    
    UILabel *la = [[UILabel alloc]init];
    la.frame = CGRectMake(0, 140, 375, 40);
    la.text = @"B label text";
    la.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:la];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 350, 375, 40);
    btn.backgroundColor = [UIColor cyanColor];
    [btn setTitle:@"B vc button" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
}


-(void)click
{
    NSLog(@"要跳转C界面了");
    CViewController *vc = [[CViewController alloc]init];
    vc.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    self.definesPresentationContext = YES;
    [self presentViewController:vc animated:YES completion:^{
        vc.view.superview.backgroundColor = [UIColor clearColor];
    }];
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
