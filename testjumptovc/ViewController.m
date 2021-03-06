//
//  ViewController.m
//  testjumptovc
//
//  Created by yulingsong on 16/3/4.
//  Copyright © 2016年 yulingsong. All rights reserved.
//

#import "ViewController.h"
#import "BViewController.h"
#import "DViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"A界面";
    
    UILabel *la = [[UILabel alloc]init];
    la.frame = CGRectMake(0, 100, 375, 40);
    la.text = @"A label text";
    la.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:la];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 300, 375, 40);
    btn.backgroundColor = [UIColor cyanColor];
    [btn setTitle:@"A vc button" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(push) name:@"dismiss" object:nil];
    
}

-(void)push
{
    DViewController *d = [[DViewController alloc]init];
    [self.navigationController pushViewController:d animated:YES];
}

-(void)click
{
    NSLog(@"要跳转B界面了");
    BViewController *vc = [[BViewController alloc]init];
    vc.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    self.definesPresentationContext = YES;
    [self presentViewController:vc animated:YES completion:^{
        vc.view.superview.backgroundColor = [UIColor clearColor];
    }];
}





@end
