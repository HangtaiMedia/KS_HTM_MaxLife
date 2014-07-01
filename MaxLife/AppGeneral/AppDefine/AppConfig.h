//
//  AppConfig.h
//  TaiPoFun
//
//  Created by 郭祖宏 on 20/11/13.
//  Copyright (c) 2013 KineticSpace Limited. All rights reserved.
//


/*---------------------------------App Constant-------------------------------------*/
//App Id、Download Url
#define kAppId      @"KSAPPID"
#define kAppUrl     [NSString stringWithFormat:@"https://itunes.apple.com/us/app/kineticspace-limited/id%@?ls=1&mt=8",kAppId]

#define kPlaceholderImage       [UIImage imageNamed:@"placeholderImage"]

/*---------------------------------App UI Config Info-------------------------------------*/

//App View Background Color
#define kAppBgColor  [UIColor whiteColor]

//App Font Style Config
#define kTitleFontFir              [UIFont boldSystemFontOfSize:20]//一級標題字號
#define kTitleFontSec              [UIFont boldSystemFontOfSize:18]//二級標題字號
#define kContentFont               [UIFont systemFontOfSize:16]  //內容文字字號
#define kContentFontBlod           [UIFont boldSystemFontOfSize:16]//内容文字字号粗体
#define kNavTitleFont              [UIFont fontWithName:@"HelveticaNeue-CondensedBlack" size:21] //導航欄標題
#define kContentFontSmall           [UIFont systemFontOfSize:12]    // 內容文字小號

//TableView Config
//TableView Separator Line Color
#define kSeparatorColor   [UIColor colorWithRed:0.941 green:0.941 blue:0.941 alpha:1]
//TableView Background Color
#define kTableViewBgColor [UIColor colorWithRed:1.000 green:1.000 blue:1.000 alpha:1]

//UIButton Text Color
#define kBtnTitleNormalColor [UIColor colorWithRed:0.718 green:0.718 blue:0.718 alpha:1]
#define kBtnTitleHighlightColor  [UIColor colorWithRed:0.910 green:0.996 blue:0.996 alpha:1]