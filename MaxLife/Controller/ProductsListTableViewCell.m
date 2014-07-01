//
//  ProductsListTableViewCell.m
//  MaxLife
//
//  Created by nik chou on 14-6-30.
//  Copyright (c) 2014年 Kineticspace Limited. All rights reserved.
//

#import "ProductsListTableViewCell.h"

@implementation ProductsListTableViewCell

@synthesize productIV,productContentV,cancelV,cancelIV,productTitleLabel,productPriceLabel,cancelLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
        // 產品圖片
        self.productIV=[[UIImageView alloc] init];
        [self.productIV setFrame:CGRectMake(10, 10, 60, 60)];
        
        [self.contentView addSubview:self.productIV];
        
        // 產品名稱和價格
        self.productContentV=[[UIView alloc] initWithFrame:CGRectMake(80, 10, 160, 60)];
        
        // 产品标题
        self.productTitleLabel=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 160, 40)];
        
        [self.productContentV addSubview:productTitleLabel];
        
        // 产品价格
        self.productPriceLabel=[[UILabel alloc] initWithFrame:CGRectMake(0, 40, 160, 20)];
        
        [self.productContentV addSubview:productPriceLabel];
        
        [self.contentView addSubview:self.productContentV];
        
        // 取消此訂單
        self.cancelV=[[UIView alloc] initWithFrame:CGRectMake(250, 10 , 60, 60)];
        
        self.cancelIV=[[UIImageView alloc] init];
        [self.cancelIV setFrame:CGRectMake(0, 0, 60, 40)];
        [self.cancelV addSubview:self.cancelIV];
        
        self.cancelLabel=[[UILabel alloc] initWithFrame:CGRectMake(0, 45, 60, 15)];
        [self.cancelV addSubview:cancelLabel];
        
        [self.contentView addSubview:self.cancelV];
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
