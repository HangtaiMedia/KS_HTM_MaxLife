//
//  MemberViewController.m
//  MaxLife
//
//  Created by Koson Gou on 27/6/14.
//  Copyright (c) 2014 Kineticspace Limited. All rights reserved.
//

#import "MemberViewController.h"
#import "MemberPage.h"
#import "MemberInfo.h"

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
    
    [self initData];
    
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
    if ([memberTableView respondsToSelector:@selector(setSeparatorInset:)]) {
        [memberTableView setSeparatorInset:UIEdgeInsetsZero];
    }
    
}

- (void)initData
{

//    ksModel = [[KSModel alloc] init];
//    [ksModel requestDataFromWSWithParams:nil forPath:@"" isJson:YES isPrivate:YES finished:^(NSDictionary *data) {
//        
//        
//        
//    } failed:^(NSString *error) {
//        
//        
//        
//    }];
    
    MemberInfo *memberInfo = [[MemberInfo alloc] initWithItem:1 userName:@"Evangeline" userPwd:@"Evangeline" sendAddress:@"香港島铜锣湾骆克道8号" photoNumber:@"93657888" creditCard:@"6220 8800 8898 5656 398" avatar:@"bg-pic"];
    
    MemberPage *member1 = [[MemberPage alloc] initWithItem:1 Title:KSLocalizedString(@"AllPurchaseRecords", @"AllPurchaseRecords") Subtitle:nil];
    MemberPage *member2 = [[MemberPage alloc] initWithItem:1 Title:KSLocalizedString(@"WaitingForGoods", @"WaitingForGoods") Subtitle:KSLocalizedString(@"NotConfirmGoods", @"NotConfirmGoods")];
    MemberPage *member3 = [[MemberPage alloc] initWithItem:1 Title:KSLocalizedString(@"MyFavoritesProduct", @"MyFavoritesProduct") Subtitle:nil];
    MemberPage *member4 = [[MemberPage alloc] initWithItem:1 Title:KSLocalizedString(@"MemberProfileEdit", @"MemberProfileEdit") Subtitle:[NSString stringWithFormat:@"%@,%@",KSLocalizedString(@"Address", @"Address"),KSLocalizedString(@"CreditCard", @"CreditCard")]];    
    MemberPage *member5 = [[MemberPage alloc] initWithItem:1 Title:KSLocalizedString(@"MemberLogout", @"MemberLogout") Subtitle:nil];
    
    // Member TableView data srouce
    memberDataSource = @[@[memberInfo,member1],@[member2,member3],@[member4,member5]];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return [memberDataSource count];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return [[memberDataSource objectAtIndex:section] count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    static NSString *cellIdentity = @"memberCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentity];
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIdentity];
        
    }
    
    [cell.textLabel setTextColor:[UIColor colorWithRed:0.663 green:0.663 blue:0.663 alpha:1]];
    [cell.detailTextLabel setTextColor:[UIColor colorWithRed:0.878 green:0.878 blue:0.878 alpha:1]];
    [cell.textLabel setFont:kContentFontBlod];
    [cell.detailTextLabel setFont:kContentFontSmall];
    
    NSInteger rowIndex = [indexPath row];
    NSInteger sectionIndex = [indexPath section];
    if (rowIndex == 0 && sectionIndex == 0) {
        
        MemberInfo *memberInfo = [[memberDataSource objectAtIndex:sectionIndex] objectAtIndex:rowIndex];
        [cell setAccessoryType:UITableViewCellAccessoryNone];
        
        
    } else {
    
        MemberPage *memberPage = [[memberDataSource objectAtIndex:sectionIndex] objectAtIndex:rowIndex];
        [cell.textLabel setText:[memberPage title]];
        [cell.detailTextLabel setText:[memberPage subTitle]];
        
        if (rowIndex == 1 && sectionIndex == 2) {
            
        }
        [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
        
    }
    
    
    return cell;
    
}

@end
