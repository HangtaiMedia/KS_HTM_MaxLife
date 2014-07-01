//
//  ShoppingCarViewController.h
//  MaxLife
//
//  Created by Koson Gou on 27/6/14.
//  Copyright (c) 2014 Kineticspace Limited. All rights reserved.
//

#import "KSViewController.h"
#import "ProductModel.h"
#import "ProductsListTableViewCell.h"

/**
 *  This is Shopping car viewController
 *
 *  @since 1.0.0
 */
@interface ShoppingCarViewController : KSViewController<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *productsListTableView;
    NSArray *productsListArray;
}

@end
