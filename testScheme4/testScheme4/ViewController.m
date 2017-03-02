//
//  ViewController.m
//  testScheme4
//
//  Created by 郝东生 on 2017/1/16.
//  Copyright © 2017年 test. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *Btn = [UIButton buttonWithType:UIButtonTypeCustom];
    Btn.frame  = CGRectMake(100, 100, 100, 100);
    Btn.backgroundColor = [UIColor redColor];
    [Btn addTarget: self action:@selector(jumpwifi) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:Btn];
    // Do any additional setup after loading the view, typically from a nib.
}


-(void)jumpwifi
{
    NSURL*url=[NSURL URLWithString:@"app-Prefs:root=WIFI"];
    
    [[UIApplication sharedApplication] openURL:url options:@{UIApplicationOpenURLOptionUniversalLinksOnly:@""} completionHandler:nil ];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
