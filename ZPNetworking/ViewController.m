//
//  ViewController.m
//  ZPNetworking
//
//  Created by kaifa001 on 16/7/8.
//  Copyright © 2016年 kaifa001. All rights reserved.
//

#import "ViewController.h"
#import "ZPNetworking.h"
#import "MBProgressHUD.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view, typically from a nib.
    [ZPNetworking AFNRequestMethod:@"GET" URLString:@"http://mobile.gocent.net/m/homePageExt/listFloorExtNew" parameters:nil success:^(id data) {
        if (data) {
            [MBProgressHUD hideHUDForView:[[UIApplication sharedApplication].windows lastObject] animated:YES];
            NSLog(@"data%@",data);
        }
       
    } failure:^(NSError *error) {
        NSLog(@"error%@",error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
