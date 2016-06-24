//
//  ONEBottomView.m
//  one
//
//  Created by TimorYang on 16/6/24.
//  Copyright © 2016年 TimorYang. All rights reserved.
//

#import "ONEBottomView.h"

@implementation ONEBottomView

/** 快速创建一个bottomView */
+ (instancetype)bottomView
{
    return [[NSBundle mainBundle]loadNibNamed:@"ONEBottomView" owner:nil options:nil].firstObject;
}

@end
