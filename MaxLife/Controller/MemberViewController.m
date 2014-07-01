//
//  MemberViewController.m
//  MaxLife
//
//  Created by Koson Gou on 27/6/14.
//  Copyright (c) 2014 Kineticspace Limited. All rights reserved.
//

#import "MemberViewController.h"
#import "MemberPage.h"

@interface MemberViewController ()

@end

@implementation MemberViewController

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
    
    [self.navigationItem setTitle:KSLocalizedString(@"MemberPage", @"MemberPage")];
    
    memberTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, mScreenWidth, mScreenHeight) style:UITableViewStylePlain];
    [memberTableView setDelegate:self];
    [memberTableView setDataSource:self];
    [self.view addSubview:memberTableView];
    
}

- (void)initData
{

    MemberPage *member = [[MemberPage alloc] initWithItem:1 Title:KSLocalizedString(@"AllPurchaseRecords", @"AllPurchaseRecords") Subtitle:nil];
    MemberPage *member2 = [[MemberPage alloc] initWithItem:1 Title:KSLocalizedString(@"WaitingForGoods", @"WaitingForGoods") Subtitle:KSLocalizedString(@"NotConfirmGoods", @"NotConfirmGoods")];
    MemberPage *member3 = [[MemberPage alloc] initWithItem:1 Title:KSLocalizedString(@"MyFavoritesProduct", @"MyFavoritesProduct") Subtitle:nil];
    MemberPage *member4 = [[MemberPage alloc] initWithItem:1 Title:KSLocalizedString(@"MyFavoritesProduct", @"MyFavoritesProduct") Subtitle:nil];
    
    MemberPage *member5 = [[MemberPage alloc] initWithItem:1 Title:KSLocalizedString(@"MemberProfileEdit", @"MemberProfileEdit") Subtitle:nil];
    
    
    
//    ""="待收貨";
//    ""="未確認收貨";
//    ""="產品收藏";
//    ""="會員資料修改";
//    "Address"="地址";
//    "CreditCard"="信用卡資料";
//    "MemberLogout"="會員登出";
    
}

@end
