//
//  ProductModel.m
//  MaxLife
//
//  Created by nik chou on 14-6-30.
//  Copyright (c) 2014年 Kineticspace Limited. All rights reserved.
//

#import "ProductModel.h"

@implementation ProductModel



@synthesize productNumber,productIcon,productTitle,productPrice;

/**
 *  初始化商品模型
 *
 *  @param number   商品编号
 *  @param iconName 商品图标
 *  @param title    商品名称
 *  @param price    商品价格
 *
 *  @return 商品实例
 */

-(id)initWithProductNumber:(NSString *)number icon:(NSString *)iconName title:(NSString *)title price:(float)price
{
    self=[super init];
    if(self != nil){
        
        productNumber=number;
        productIcon=[UIImage imageNamed:iconName];
        productTitle=title;
        productPrice=price;
    }
    return self;
}

@end
