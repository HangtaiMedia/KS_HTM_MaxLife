//
//  ShoppingCarViewController.m
//  MaxLife
//
//  Created by Koson Gou on 27/6/14.
//  Copyright (c) 2014 Kineticspace Limited. All rights reserved.
//

#import "ShoppingCarViewController.h"

@interface ShoppingCarViewController ()

@end

@implementation ShoppingCarViewController

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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 *  Initial some base information of current viewController and you can reset use this function
 *
 *  @since 1.0.0
 */
- (void)initBaseInfo
{
    
    [self.navigationItem setTitle:KSLocalizedString(@"ShoppingCarPage", @"ShoppingCarPage")];
    
}

@end
