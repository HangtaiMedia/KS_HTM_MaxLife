//
//  ProductsListTableViewCell.h
//  MaxLife
//
//  Created by nik chou on 14-6-30.
//  Copyright (c) 2014年 Kineticspace Limited. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductsListTableViewCell : UITableViewCell

@property UIImageView *productIV;
@property UIView *productContentV;

@property UIView *cancelV;
@property UIImageView *cancelIV;
@property UILabel *cancelLabel;

@property UILabel *productTitleLabel;
@property UILabel *productPriceLabel;

@end
