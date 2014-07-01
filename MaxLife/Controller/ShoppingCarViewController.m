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
    
    //构建数据
    ProductModel *pm1=[[ProductModel alloc] initWithProductNumber:@"2014000001" icon:@"btn-discount-n" title:@"2014春夏品质女装新款圆领连衣裙大牌真丝连衣裙" price:270.00];
    ProductModel *pm2=[[ProductModel alloc] initWithProductNumber:@"2014000002" icon:@"btn-discount-n" title:@"2014春夏品质女装新款圆领连衣裙大牌真丝连衣裙" price:180.00];
    ProductModel *pm3=[[ProductModel alloc] initWithProductNumber:@"2014000003" icon:@"btn-discount-n" title:@"2014春夏品质女装新款圆领连衣裙大牌真丝连衣裙" price:99.00];
    ProductModel *pm4=[[ProductModel alloc] initWithProductNumber:@"2014000004" icon:@"btn-discount-n" title:@"2014春夏品质女装新款圆领连衣裙大牌真丝连衣裙" price:188.00];
    ProductModel *pm5=[[ProductModel alloc] initWithProductNumber:@"2014000005" icon:@"btn-discount-n" title:@"2014春夏品质女装新款圆领连衣裙大牌真丝连衣裙" price:98.00];
    ProductModel *pm6=[[ProductModel alloc] initWithProductNumber:@"2014000006" icon:@"btn-discount-n" title:@"2014春夏品质女装新款圆领连衣裙大牌真丝连衣裙" price:259.00];
    
    productsListArray=[NSArray arrayWithObjects:pm1,pm2,pm3,pm4,pm5,pm6,nil];
    
    productsListTableView=[[UITableView alloc] initWithFrame:CGRectMake(0, 0, mScreenWidth, mScreenHeight-108) style:UITableViewStylePlain];
    
    productsListTableView.delegate=self;
    productsListTableView.dataSource=self;
    
    [self.view addSubview:productsListTableView];
    
    //设置UITableViewCell分割线不到头的问题
    
    if([productsListTableView respondsToSelector:@selector(setSeparatorInset:)]){
        
        [productsListTableView setSeparatorInset:UIEdgeInsetsZero];
    
    }
    
};

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
    UILabel *shoppingCarTitleLabel=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width,30)];
    [shoppingCarTitleLabel setText:@"購物車詳情"];
    [shoppingCarTitleLabel setFont:[UIFont systemFontOfSize:13]];
    [shoppingCarTitleLabel setTextAlignment:NSTextAlignmentCenter];
    [shoppingCarTitleLabel setBackgroundColor:[UIColor clearColor]];
    
    self.navigationItem.titleView=shoppingCarTitleLabel;
}

#pragma mark-
#pragma mark UITableView Delegate

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [productsListArray count]+2;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *productCellIdentifier=@"productCellIndentifier";
    
    ProductsListTableViewCell *cell;
    
    if(cell == nil){
        cell=[[ProductsListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:productCellIdentifier];
    }
    
    UIFont *font=[UIFont fontWithName:@"Arial" size:12];
    cell.backgroundColor=[UIColor whiteColor];
    
    // 取消選中行樣式
    cell.selectionStyle=UITableViewCellSelectionStyleNone;
    
    NSInteger row=[indexPath row];
    
    
    if(row == [productsListArray count]){
        
//        cell=[];
        UILabel *totalLabel=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, mScreenWidth, 44)];
        [totalLabel setText:@"￥ 1128.08"];
        [totalLabel setBackgroundColor:[UIColor redColor]];
        
        [cell.contentView addSubview:totalLabel];
        
    }else if(row == [productsListArray count]+1){
        
        UILabel *totalLabel=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, mScreenWidth, 44)];
        [totalLabel setText:@"￥ 1128.08"];
        [totalLabel setBackgroundColor:[UIColor redColor]];
        
        [cell.contentView addSubview:totalLabel];
        
    }else{
        
        ProductModel *model=(ProductModel *)[productsListArray objectAtIndex:row];
        
        // 圖片
        [cell.productIV setImage:model.productIcon];
        
        // 標題
        [cell.productTitleLabel setText:model.productTitle];
        [cell.productTitleLabel setFont:font];
        [cell.productTitleLabel setLineBreakMode:NSLineBreakByWordWrapping];
        [cell.productTitleLabel setNumberOfLines:0];
        
        // 價格
        [cell.productPriceLabel setText:[NSString stringWithFormat:@"￥ %.2f",model.productPrice]];
        [cell.productPriceLabel setFont:font];
        [cell.productPriceLabel setTextColor:[UIColor redColor]];
        
        // 取消圖片
        [cell.cancelIV setImage:[UIImage imageNamed:@"btn-close"]];
        
        // 取消文字
        [cell.cancelLabel setText:@"取消"];
        [cell.cancelLabel setTextAlignment:NSTextAlignmentCenter];
        [cell.cancelLabel setFont:font];
        
    }
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger row=[indexPath row];
    if(row == [productsListArray count] || row == [productsListArray count]+1){
        return 44.0;
    }else{
        return 80.0;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"aa");
}

@end
