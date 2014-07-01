//
//  SettingViewController.m
//  MaxLife
//
//  Created by Koson Gou on 27/6/14.
//  Copyright (c) 2014 Kineticspace Limited. All rights reserved.
//

#import "SettingViewController.h"

@interface SettingViewController ()

@end

@implementation SettingViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

/**
 *  Life cycle
 *
 *  @since 1.0.0
 */
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self initBaseInfo];
    
}

/**
 *  Initial some base information of current viewController and you can reset use this function
 *
 *  @since 1.0.0
 */
- (void)initBaseInfo
{

    [self.navigationItem setTitle:KSLocalizedString(@"SettingPage", @"SettingPage")];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
