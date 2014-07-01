//
//  MemberViewController.h
//  MaxLife
//
//  Created by Koson Gou on 27/6/14.
//  Copyright (c) 2014 Kineticspace Limited. All rights reserved.
//

#import "KSViewController.h"

/**
 *  This is member page.
 *
 *  @since 1.0.0
 */
@interface MemberViewController : KSViewController<UITableViewDelegate,UITableViewDataSource> {

    UITableView *memberTableView;
    
}

@end
