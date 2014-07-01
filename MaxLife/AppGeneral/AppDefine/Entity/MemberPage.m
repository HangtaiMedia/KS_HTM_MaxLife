//
//  MemberPage.m
//  MaxLife
//
//  Created by Koson Gou on 30/6/14.
//  Copyright (c) 2014 Kineticspace Limited. All rights reserved.
//

#import "MemberPage.h"

@implementation MemberPage
@synthesize index;
@synthesize title;
@synthesize subTitle;

- (id)initWithItem:(int)idx Title:(NSString *)tit Subtitle:(NSString *)subTit
{

    if (self= [super init]) {
        
        self.index = idx;
        self.title = tit;
        self.subTitle = subTit;
        
    }
    
    return self;
    
}

@end
