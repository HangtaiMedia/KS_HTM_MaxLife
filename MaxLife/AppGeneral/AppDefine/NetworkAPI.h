//
//  NetworkAPI.h
//  TaiPoFun
//
//  Created by 郭祖宏 on 20/11/13.
//  Copyright (c) 2013 KineticSpace Limited. All rights reserved.
//


//Network Status Code
typedef enum
{
    KSStatusSucceed            = 200,              //Request Success
    KSStatusFailed             = 201,              //Request Failed
    KSStatusNeedLogin          = 203,              //Must reLogin
    
}KSStatusCode;

//OS Platform
typedef enum
{
    KSPlatWeb            = 0,
    KSPlatAndroid        = 1,
    KSPlatiOS            = 3,
    KSPlatWindowsPhone   = 4
} KSOSPlatform;

//Success And Failed Blocks
typedef void (^KSFinishedBlock) (NSDictionary *data);
typedef void (^KSFailedBlock)   (NSString *error);
typedef void (^KSUploadProgress) (float progressValue);

//Load More And Update Data Block
typedef void (^KSLoadMOreDataBlock) (void);
typedef void (^KSUpdateDataBlock) (void);

#define kImagePrex              @"http://192.168.128.21/"
#define kWebService             @"http://cms.kineticspace.net/taipo/"
