//
//  MemberInfo.h
//  MaxLife
//
//  Created by Koson Gou on 1/7/14.
//  Copyright (c) 2014 Kineticspace Limited. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MemberInfo : NSObject
@property (nonatomic , assign) int index;
@property (nonatomic , strong) NSString *userName;
@property (nonatomic , strong) NSString *userPwd;
@property (nonatomic , strong) NSString *sendAddress;
@property (nonatomic , strong) NSString *phoneNumber;
@property (nonatomic , strong) NSString *creditCard;
@property (nonatomic , strong) NSString *avatar;

- (id)initWithItem:(int)idx userName:(NSString *)name userPwd:(NSString *)pwd sendAddress:(NSString *)address photoNumber:(NSString *)photo creditCard:(NSString *)card avatar:(NSString *)ava;

@end
