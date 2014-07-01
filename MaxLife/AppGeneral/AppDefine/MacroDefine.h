//
//  MacroDefine.h
//  TaiPoFun
//
//  Created by 郭祖宏 on 20/11/13.
//  Copyright (c) 2013 KineticSpace Limited. All rights reserved.
//


//一般的提示信息
#define mAlertView(title, msg) \
UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:msg delegate:nil \
cancelButtonTitle:@"OK" \
otherButtonTitles:nil]; \
[alert show];

//----------界面設計相關-------

#define mNavBarHeight         44
#define mTabBarHeight         49
#define mScreenWidth          ([UIScreen mainScreen].bounds.size.width)
#define mScreenHeight         ([UIScreen mainScreen].bounds.size.height)

//----------設備系統相關---------
#define mRetina   ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) : NO)
#define mIsiP5    ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136),[[UIScreen mainScreen] currentMode].size) : NO)
#define mIsPad    (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define mIsiphone (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)

#define mSystemVersion   ([[UIDevice currentDevice] systemVersion])
#define mDeviceOpenUDID  ([OpenUDID value])
#define mDeviceModel     ([[UIDevice currentDevice] model])
#define mDeviceName      ([[UIDevice currentDevice] name])
#define mCurrentLanguage ([[NSLocale preferredLanguages] objectAtIndex:0])
#define mAPPVersion      [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"]
#define mFirstLaunch     mAPPVersion     //以系統版本來判斷是否第一次啓動，包括升級後啓動
#define mFirstRun        @"firstRun"     //判斷是否第一次運行，升級後啓動不算