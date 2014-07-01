//
//  KSTabBarViewController.m
//  MaxLife
//
//  Created by Koson Gou on 26/6/14.
//  Copyright (c) 2014 Kineticspace Limited. All rights reserved.
//

#import "KSTabBarViewController.h"

@interface KSTabBarViewController ()

@end

@implementation KSTabBarViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

/**
 *  Life Cycle
 *
 *  @since 1.0.0
 */
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tabBar.hidden = YES;
    CGFloat tabBarViewY = self.view.frame.size.height - 49;
    
    tabBarView = [[UIView alloc] initWithFrame:CGRectMake(0, tabBarViewY, mScreenWidth, mTabBarHeight)];
    tabBarView.userInteractionEnabled = YES; // Must set to yes
    [tabBarView setBackgroundColor:[UIColor blackColor]];
//    tabBarView.image = [UIImage imageNamed:@"tabBarBackground.jpeg"];
    
    [self.view addSubview:tabBarView];
    
    [self createButtonWithNormalName:@"btn-home-n" selectName:@"btn-home-h" Title:KSLocalizedString(@"HomePage", @"HomePage") Index:0];
    [self createButtonWithNormalName:@"btn-cart-n" selectName:@"btn-cart-h" Title:KSLocalizedString(@"ShoppingCarPage", @"ShoppingCarPage") Index:1];
    [self createButtonWithNormalName:@"btn-member-n" selectName:@"btn-member-h" Title:KSLocalizedString(@"MemberPage", @"MemberPage") Index:2];
    [self createButtonWithNormalName:@"btn-setting-n" selectName:@"btn-setting-h" Title:KSLocalizedString(@"SettingPage", @"SettingPage") Index:3];
    
    KSCustomButton *button = tabBarView.subviews[0];
    
    [self changeViewController:button];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark-
#pragma mark Create button
- (void)createButtonWithNormalName:(NSString *)normal selectName:(NSString *)selected Title:(NSString *)title Index:(int)index
{

    KSCustomButton *button = [KSCustomButton buttonWithType:UIButtonTypeCustom];
    button.tag = index;
    
    CGFloat width = tabBarView.frame.size.width / 4;
    CGFloat height = tabBarView.frame.size.height;
    button.frame = CGRectMake((mScreenWidth / 4) * index, 0, width, height);
    
    [button setImage:[UIImage imageNamed:normal] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:selected] forState:UIControlStateDisabled];
    [button setTitle:title forState:UIControlStateNormal];
    
    [button addTarget:self action:@selector(changeViewController:) forControlEvents:UIControlEventTouchDown];

    button.imageView.contentMode = UIViewContentModeCenter; // Let image center
    button.titleLabel.textAlignment = NSTextAlignmentCenter; // Let title center
    button.titleLabel.font = kContentFontSmall;
    
    [tabBarView addSubview:button];
    
}

#pragma mark - 
#pragma mark Button click event
- (void)changeViewController:(KSCustomButton *)sender
{

    self.selectedIndex = sender.tag;
    sender.enabled = NO;
    if (previousBtn != sender) {
        
        previousBtn.enabled = YES;
        
    }
    
    previousBtn = sender;
    
}




@end
