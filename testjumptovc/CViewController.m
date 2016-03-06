//
//  CViewController.m
//  testjumptovc
//
//  Created by yulingsong on 16/3/4.
//  Copyright © 2016年 yulingsong. All rights reserved.
//

#import "CViewController.h"
#import "DViewController.h"

@interface CViewController ()

@end

@implementation CViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.3];

    UILabel *la = [[UILabel alloc]init];
    la.frame = CGRectMake(0, 180, 375, 40);
    la.text = @"C label text";
    la.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:la];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 400, 375, 40);
    btn.backgroundColor = [UIColor cyanColor];
    [btn setTitle:@"C vc button" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
}

-(void)click
{
//    NSLog(@"要跳转D界面了");
//    DViewController *vc = [[DViewController alloc]init];
//    UINavigationController *na = [[UINavigationController alloc]initWithRootViewController:vc];
//    [self presentViewController:na animated:YES completion:nil];
    [[NSNotificationCenter defaultCenter]postNotificationName:@"dismiss" object:self];
    [self.presentingViewController.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
