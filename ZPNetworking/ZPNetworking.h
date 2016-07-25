//
//  ZPNetworking.h
//  ZPNetworking
//
//  Created by kaifa001 on 16/7/8.
//  Copyright © 2016年 kaifa001. All rights reserved.
//

#import <Foundation/Foundation.h>
@class AFNetworking;
@class AFHTTPSessionManager;
@interface ZPNetworking : NSObject
+(void)AFNRequestMethod:(NSString *)requestMethod URLString:(NSString *)urlString parameters:(id)parameters success:(void (^)(id data))successObject failure:(void(^)(NSError * error))failure;
@end
