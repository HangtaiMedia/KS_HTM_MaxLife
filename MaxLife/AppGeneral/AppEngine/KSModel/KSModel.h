//
//  KSModel.h
//  TaiPoFun
//
//  Created by 郭祖宏 on 7/11/13.
//  Copyright (c) 2013 KineticSpace Limited. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KSModel : NSObject

//Network Request Method(default is POST)
@property (nonatomic , copy) NSString *httpMethod;

//Request Data From KS Web Services with params
- (void)requestDataFromWSWithParams:(NSDictionary *)params
                            forPath:(NSString *)path
                             isJson:(BOOL)isJson
                          isPrivate:(BOOL)isPrivate
                           finished:(KSFinishedBlock)finished
                             failed:(KSFailedBlock)failed;

//Download file From KS Server
- (void)downloadFileFromWSWithFilePath:(NSString *)filePath
                              baseURL:(NSString *)baseURL
                            toSavePath:(NSString *)savePath
                              finished:(KSFinishedBlock)finished
                                failed:(KSFailedBlock)failed;

//upload file(path:web Servers interface,photoKey:fileupload form key,fileName:set by yourself)
//- (void)uploadFile:(NSData *)fileData baseURL:(NSString *)baseURL path:(NSString *)path photoKey:(NSString *)photoKey fileName:(NSString *)fileName params:(NSDictionary *)params uploadProgress:(KSUploadProgress)uploadProgress finished:(KSFinishedBlock)finished failed:(KSFailedBlock)failed;

- (void)uploadFile:(NSData *)fileData path:(NSString *)path photoKey:(NSString *)photoKey fileName:(NSString *)fileName params:(NSDictionary *)params uploadProgress:(KSUploadProgress)uploadProgress finished:(KSFinishedBlock)finished failed:(KSFailedBlock)failed;


@end
