//
//  KSCustomButton.m
//  MaxLife
//
//  Created by Koson Gou on 26/6/14.
//  Copyright (c) 2014 Kineticspace Limited. All rights reserved.
//

#import "KSCustomButton.h"

@implementation KSCustomButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

#pragma mark - 
#pragma mark setting image bounds for button
/**
 *  Image rect
 *
 *  @param contentRect content rect
 *
 *  @return image rect
 *
 *  @since 1.0.0
 */
- (CGRect)imageRectForContentRect:(CGRect)contentRect
{

    CGFloat width = contentRect.size.width;
    CGFloat height = contentRect.size.height * 0.6;
    return CGRectMake(0, 0, width, height);

}

/**
 *  Title rect
 *
 *  @param CGRecttitleRectForContentRect:CGRect content rect
 *
 *  @return title rect
 *
 *  @since 1.0.0
 */
#pragma mark -
#pragma mark setting title label bounds for button
- (CGRect)titleRectForContentRect:(CGRect)contentRect
{

    CGFloat top = contentRect.size.height * 0.6;
    CGFloat width = contentRect.size.width;
    CGFloat height = contentRect.size.height - top;
    return CGRectMake(0, top, width, height);
    
}

@end
