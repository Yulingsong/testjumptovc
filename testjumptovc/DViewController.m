//
//  DViewController.m
//  testjumptovc
//
//  Created by yulingsong on 16/3/4.
//  Copyright © 2016年 yulingsong. All rights reserved.
//

#import "DViewController.h"
#import "EViewController.h"

@interface DViewController ()

@end

@implementation DViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"D界面";
    
    UILabel *la = [[UILabel alloc]init];
    la.frame = CGRectMake(0, 100, 375, 40);
    la.text = @"D label text";
    la.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:la];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 300, 375, 40);
    btn.backgroundColor = [UIColor cyanColor];
    [btn setTitle:@"D vc button" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
}

-(void)click
{
    NSLog(@"要跳转E界面了");
    EViewController *vc = [[EViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
