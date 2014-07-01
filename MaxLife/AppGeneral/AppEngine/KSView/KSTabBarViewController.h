//
//  KSTabBarViewController.h
//  MaxLife
//
//  Created by Koson Gou on 26/6/14.
//  Copyright (c) 2014 Kineticspace Limited. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KSCustomButton.h"

/**
 *  A Custom TabBarController
 *
 *  @since 1.0.0
 */
@interface KSTabBarViewController : UITabBarController {

    UIView *tabBarView;
    KSCustomButton *previousBtn;
    
}


@end
