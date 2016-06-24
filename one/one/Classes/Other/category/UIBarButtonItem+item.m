//
//  UIBarButtonItem+item.m
//  one
//
//  Created by TimorYang on 16/6/24.
//  Copyright © 2016年 TimorYang. All rights reserved.
//

#import "UIBarButtonItem+item.h"

@implementation UIBarButtonItem (item)

+ (instancetype)buttomWithImage:(UIImage *)image highLight:(UIImage *)highLightImage target:(id)target action:(SEL)action
{
    //创建一个Button
    UIButton *itemButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //设置正常状态下图片
    [itemButton setImage:image forState:UIControlStateNormal];
    //设置高亮状态下的图片
    [itemButton setImage:highLightImage forState:UIControlStateHighlighted];
    //按钮点击事件
    [itemButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    //设置ItemButton的尺寸
    [itemButton sizeToFit];
    //创建UIView
    UIView * view = [[UIView alloc]initWithFrame:itemButton.bounds];
    //把button添加到View中
    [view addSubview:itemButton];
    return [[UIBarButtonItem alloc]initWithCustomView:view];
}
@end
