//
//  MemberInfo.m
//  MaxLife
//
//  Created by Koson Gou on 1/7/14.
//  Copyright (c) 2014 Kineticspace Limited. All rights reserved.
//

#import "MemberInfo.h"

@implementation MemberInfo
@synthesize index,userName,userPwd,sendAddress,phoneNumber,creditCard,avatar;


-(id)initWithItem:(int)idx userName:(NSString *)name userPwd:(NSString *)pwd sendAddress:(NSString *)address photoNumber:(NSString *)phone creditCard:(NSString *)card avatar:(NSString *)ava
{

    if (self = [super init]) {
        
        self.index = idx;
        self.userName = name;
        self.userPwd = pwd;
        self.sendAddress = address;
        self.phoneNumber = phone;
        self.creditCard = card;
        self.avatar = ava;
        
    }
    
    return self;
    
}

@end
