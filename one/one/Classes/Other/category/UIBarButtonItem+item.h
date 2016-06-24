//
//  UIBarButtonItem+item.h
//  one
//
//  Created by TimorYang on 16/6/24.
//  Copyright © 2016年 TimorYang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (item)
+ (instancetype)buttomWithImage:(UIImage *)image highLight:(UIImage *)highLightImage target:(id)target action:(SEL)action;
@end
