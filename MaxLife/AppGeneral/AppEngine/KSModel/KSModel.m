//
//  KSModel.m
//  TaiPoFun
//
//  Created by 郭祖宏 on 7/11/13.
//  Copyright (c) 2013 KineticSpace Limited. All rights reserved.
//

#import "KSModel.h"

@implementation KSModel
@synthesize httpMethod;
- (id)init
{
    self = [super init];
    if (self) {
        self.httpMethod = @"POST";
    }
    return self;
}

#pragma mark -
#pragma mark request data from ks server with params
- (void)requestDataFromWSWithParams:(NSDictionary *)params forPath:(NSString *)path isJson:(BOOL)isJson isPrivate:(BOOL)isPrivate finished:(KSFinishedBlock)finished failed:(KSFailedBlock)failed
{
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:[path stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]]];
    
    //[request setValuesForKeysWithDictionary:params];
    
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc]
                                         initWithRequest:request];
    
    operation.responseSerializer = [AFJSONResponseSerializer serializer];
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        if (isJson) {
            if(isPrivate){
                
                if ([operation.response statusCode] == 200) {
                    if([responseObject isKindOfClass:[NSDictionary class]])
                    {
                        NSDictionary *resultDic = (NSDictionary *)responseObject;
                        if ([resultDic[@"code"] integerValue] == KSStatusSucceed) {
                            finished(resultDic);
                        } else {
                            failed(resultDic[@"msg"]);
                        }
                    } else {
                        failed(@"INVALIDATE DATA");
                    }
                    
                } else {
                    failed(responseObject);
                }
                
            } else {
                
                if([responseObject isKindOfClass:[NSDictionary class]])
                {
                    NSDictionary *resultDic = (NSDictionary *)responseObject;
                    finished(resultDic);
                    
                } else {
                    failed(@"INVALIDATE DATA");
                }
                
            }
            
        } else {
            
            if (isPrivate) {
                
                NSError *error;
                NSDictionary *resultDic = [NSJSONSerialization JSONObjectWithData:responseObject                                                                                         options:kNilOptions error:&error];
                if (!error) {
                    if ([operation.response statusCode] == 200) {
                        if ([resultDic[@"code"] integerValue] == KSStatusSucceed) {
                            finished(resultDic);
                        } else {
                            failed(resultDic[@"msg"]);
                        }
                    } else {
                        failed(resultDic[@"msg"]);
                    }
                } else {
                    failed(@"INVALIDATE DATA");
                }
                
            } else {
            
                NSError *error;
                NSDictionary *resultDic = [NSJSONSerialization JSONObjectWithData:responseObject                                                                                         options:kNilOptions error:&error];
                if (!error) {
                    
                    finished(resultDic);
                    
                } else {
                    
                    failed(@"INVALIDATE DATA");
                    
                }
            
            }
            
        }
        
    } failure:^(AFHTTPRequestOperation *operation,NSError *error){
        
         if(error.code == -1009) {
             
             failed(KSLocalizedString(@"NetworkError", @"NetworkError"));
             
         } else {
         
             failed(KSLocalizedString(@"RequestWSException", @"RequestWSException"));
             
         }
        
    }];
    [operation start];
    
}

#pragma mark -
#pragma mark download file from ks server
- (void)downloadFileFromWSWithFilePath:(NSString *)filePath baseURL:(NSString *)baseURL toSavePath:(NSString *)savePath finished:(KSFinishedBlock)finished failed:(KSFailedBlock)failed{
    
    //------------
    // coming soon
    //------------
    
}

//#pragma mark -
//#pragma mark upload file to ks server
//寫法一
//- (void)uploadFile:(NSData *)fileData baseURL:(NSString *)baseURL path:(NSString *)path photoKey:(NSString *)photoKey fileName:(NSString *)fileName params:(NSDictionary *)params uploadProgress:(KSUploadProgress)uploadProgress finished:(KSFinishedBlock)finished failed:(KSFailedBlock)failed
//{
//    NSString *mimeType = [NSData contentTypeForImageData:fileData];
//    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
//    NSString *url = [NSString stringWithFormat:@"%@%@",baseURL,path];
//    [manager POST:url parameters:params constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
//        
//        [formData appendPartWithFileData:fileData name:photoKey fileName:fileName mimeType:mimeType];
//        
//    } success:^(AFHTTPRequestOperation *operation, id responseObject) {
//       
//        NSError *error;
//         NSDictionary *resultDic = [NSJSONSerialization JSONObjectWithData:responseObject                                                                                         options:kNilOptions error:&error];
//         if (!error) {
//             if ([operation.response statusCode] == 200) {
//                 if ([resultDic[@"code"] integerValue] == KSStatusSucceed) {
//                     finished(nil);
//                 } else {
//                     failed(nil);
//                 }
//             } else {
//                 failed(nil);
//             }
//         } else {
//             failed(nil);
//         }
//        
//    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//         mAlertView(@"網絡錯誤", error.localizedDescription)
//    }];
//}

////寫法二
//- (void)uploadFile:(NSData *)fileData path:(NSString *)path photoKey:(NSString *)photoKey fileName:(NSString *)fileName params:(NSDictionary *)params uploadProgress:(KSUploadProgress)uploadProgress finished:(KSFinishedBlock)finished failed:(KSFailedBlock)failed
//{
//    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
//    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
//    NSURL *URL = [NSURL URLWithString:[path stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
//    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
//
//
//    NSProgress *progress;
//    NSURLSessionUploadTask *uploadTask = [manager uploadTaskWithRequest:request fromData:fileData progress:&progress completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
//        if (error) {
//
//            mAlertView(@"網絡錯誤", error.localizedDescription);
//
//        } else {
//            NSError *error;
//         NSDictionary *resultDic = [NSJSONSerialization JSONObjectWithData:responseObject                                                                                         options:kNilOptions error:&error];
//         if (!error) {
//
//             if ([resultDic[@"code"] integerValue] == KSStatusSucceed) {
//                 finished(nil);
//             } else {
//                 failed(nil);
//             }
//
//         } else {
//             failed(nil);
//         }
//            
//        }
//    }];
//    
//    [progress addObserver:self
//               forKeyPath:@"fractionCompleted"
//                  options:NSKeyValueObservingOptionNew
//                  context:NULL];
//    
//    [uploadTask resume];
//}

//- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
//{
//    [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
//    
//    if ([keyPath isEqualToString:@"fractionCompleted"] && [object isKindOfClass:[NSProgress class]]) {
//        NSProgress *progress = (NSProgress *)object;        
//        NSLog(@"Progress is %f", progress.fractionCompleted);
//    }
//}

#pragma mark -
#pragma mark upload file to ks server
- (void)uploadFile:(NSData *)fileData path:(NSString *)path photoKey:(NSString *)photoKey fileName:(NSString *)fileName params:(NSDictionary *)params uploadProgress:(KSUploadProgress)uploadProgress finished:(KSFinishedBlock)finished failed:(KSFailedBlock)failed
{
    NSString *mimeType = [NSData contentTypeForImageData:fileData];
//    NSURLRequest *request = [[AFHTTPRequestSerializer serializer] multipartFormRequestWithMethod:self.httpMethod URLString:[path stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding] parameters:params constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
//        [formData appendPartWithFileData:fileData name:photoKey fileName:fileName mimeType:mimeType];
//    }];
    
    
    NSURLRequest *request = [[AFHTTPRequestSerializer serializer] multipartFormRequestWithMethod:self.httpMethod URLString:[path stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding] parameters:params constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
        
            [formData appendPartWithFileData:fileData name:photoKey fileName:fileName mimeType:mimeType];
        
    } error:nil];
    
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
        
    [operation setUploadProgressBlock:^(NSUInteger bytesWritten, long long totalBytesWritten, long long totalBytesExpectedToWrite) {
        
        float sentValue = totalBytesWritten / totalBytesExpectedToWrite;
        uploadProgress(sentValue);
        
    }];
    
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject)
     {
         NSError *error;
         NSDictionary *resultDic = [NSJSONSerialization JSONObjectWithData:responseObject                                                                                         options:kNilOptions error:&error];
         if (!error) {
             if ([operation.response statusCode] == 200) {
                 if ([resultDic[@"code"] integerValue] == KSStatusSucceed) {
                     finished(nil);
                 } else {
                     failed(nil);
                 }
             } else {
                 failed(nil);
             }
         } else {
             failed(nil);
         }
         
     } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
         
         mAlertView(@"網絡錯誤", error.localizedDescription)
         
     }];
    
    [operation start];
}

@end
