//
//  MemberPage.h
//  MaxLife
//
//  Created by Koson Gou on 30/6/14.
//  Copyright (c) 2014 Kineticspace Limited. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MemberPage : NSObject

@property (nonatomic , assign) int       index;
@property (nonatomic , strong) NSString  *title;
@property (nonatomic , strong) NSString  *subTitle;

- (id)initWithItem:(int)index  Title:(NSString *)title Subtitle:(NSString *)subTitle;

@end
