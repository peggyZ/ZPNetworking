//
//  ZPNetworking.m
//  ZPNetworking
//
//  Created by kaifa001 on 16/7/8.
//  Copyright © 2016年 kaifa001. All rights reserved.
//

#import "ZPNetworking.h"
#import "AFNetworking.h"
#import "MBProgressHUD.h"
#import "AppDelegate.h"
@implementation ZPNetworking
+(void)AFNRequestMethod:(NSString *)requestMethod URLString:(NSString *)urlString parameters:(id)parameters success:(void (^)(id data))successObject failure:(void(^)(NSError * error))failure {
   AppDelegate *app = (AppDelegate *)[UIApplication sharedApplication].delegate;
    AFHTTPSessionManager *session = [AFHTTPSessionManager manager];
    [MBProgressHUD showHUDAddedTo:app.window  animated:YES];
    if ([requestMethod isEqualToString:@"GET"] ) {
        [session GET:urlString parameters:parameters progress:^(NSProgress * _Nonnull downloadProgress) {
            
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            if (responseObject) {
                [MBProgressHUD hideHUDForView:app.window animated:YES];
                [MBProgressHUD hideHUDForView:nil animated:YES];
                successObject(responseObject);
            }
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            failure(error);
        }];
    }else if([requestMethod isEqualToString:@"POST"]){
        [session POST:urlString parameters:parameters progress:^(NSProgress * _Nonnull uploadProgress) {
            
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            if (responseObject) {
                [MBProgressHUD hideHUDForView:app.window animated:YES];
                successObject(responseObject);
                
            }

        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            failure(error);
        }];
    }

}

@end
