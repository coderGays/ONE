//
//  UIImage+image.m
//  one
//
//  Created by TimorYang on 16/6/23.
//  Copyright © 2016年 TimorYang. All rights reserved.
//

#import "UIImage+image.h"

@implementation UIImage (image)

/** 返回一张不被渲染的图片 */
+ (instancetype)imageWithOriginalName:(NSString *)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    //让图片不被喧嚷
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    return image;
}
@end
