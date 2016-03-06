//
//  FViewController.m
//  testjumptovc
//
//  Created by yulingsong on 16/3/4.
//  Copyright © 2016年 yulingsong. All rights reserved.
//

#import "FViewController.h"
#import "ViewController.h"

@interface FViewController ()

@end

@implementation FViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"F界面";
    
    UILabel *la = [[UILabel alloc]init];
    la.frame = CGRectMake(0, 100, 375, 40);
    la.text = @"F label text";
    la.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:la];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 300, 375, 40);
    btn.backgroundColor = [UIColor cyanColor];
    [btn setTitle:@"F vc button" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.frame = CGRectMake(0, 350, 375, 40);
    btn1.backgroundColor = [UIColor cyanColor];
    [btn1 setTitle:@"F1 vc button" forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:btn1];
    [btn1 addTarget:self action:@selector(click1) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.frame = CGRectMake(0, 400, 375, 40);
    btn2.backgroundColor = [UIColor cyanColor];
    [btn2 setTitle:@"F2 vc button" forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:btn2];
    [btn2 addTarget:self action:@selector(click2) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn3.frame = CGRectMake(0, 450, 375, 40);
    btn3.backgroundColor = [UIColor cyanColor];
    [btn3 setTitle:@"F3 vc button" forState:UIControlStateNormal];
    [btn3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:btn3];
    [btn3 addTarget:self action:@selector(click3) forControlEvents:UIControlEventTouchUpInside];
}

-(void)click
{
    NSLog(@"要跳转根界面了");
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}
-(void)click1
{
    NSLog(@"要跳了1");
    [self.navigationController popoverPresentationController];
    
}
-(void)click2
{
    NSLog(@"要跳了2");
    [self.navigationController popViewControllerAnimated:YES];
    
}
-(void)click3
{
    NSLog(@"要跳了3");
    for (UIViewController *controller in self.navigationController.viewControllers)
    {
        if ([controller isKindOfClass:[ViewController class]])
        {
            [self.presentingViewController.presentingViewController dismissViewControllerAnimated:NO completion:nil];
        }
    }
    
}







-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.navigationController popoverPresentationController];
}


@end
