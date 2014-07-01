//
//  AppDelegate.h
//  MaxLife
//
//  Created by Koson Gou on 26/6/14.
//  Copyright (c) 2014 Kineticspace Limited. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KSTabBarViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate,UITabBarControllerDelegate>

@property (strong , nonatomic) UIWindow *window;
@property (nonatomic , strong) KSTabBarViewController *tabBarController;

@end
