//
//  UIImage+image.h
//  one
//
//  Created by TimorYang on 16/6/23.
//  Copyright © 2016年 TimorYang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (image)

/** 返回一张不被渲染的图片 */
+ (instancetype)imageWithOriginalName:(NSString *)imageName;
@end
