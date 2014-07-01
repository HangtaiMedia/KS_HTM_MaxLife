//
//  ProductModel.h
//  MaxLife
//
//  Created by nik chou on 14-6-30.
//  Copyright (c) 2014年 Kineticspace Limited. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ProductModel : NSObject

@property (nonatomic , strong) NSString *productNumber;
@property (nonatomic , strong) UIImage *productIcon;
@property (nonatomic , strong) NSString *productTitle;
@property (nonatomic) float productPrice;

-(id)initWithProductNumber:(NSString *)number icon:(NSString *)iconName title:(NSString *)title price:(float)price;

@end
