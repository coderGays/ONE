//
//  ONENavigationController.m
//  one
//
//  Created by TimorYang on 16/6/23.
//  Copyright © 2016年 TimorYang. All rights reserved.
//

/****** 思路 ******/
/*
 
 */
/****** 步骤 ******/

/****** Bug/问题总结 ******/
/*
 1.导航栏NavigationBaItem的渲染问题
 */

#import "ONENavigationController.h"


@interface ONENavigationController ()

@end

@implementation ONENavigationController
//
+ (void)load
{
    //获取全局ONENavigationController的TabBarItem
    UINavigationBar *item = [UINavigationBar appearanceWhenContainedIn:self, nil];
    
    //定义一个可变字典保存
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    //设置字体大小
    dict[NSFontAttributeName] = [UIFont boldSystemFontOfSize:20];
    dict[NSForegroundColorAttributeName] = ONEColor(0, 0, 0, 1);
    
    //加载item属性
    [item setTitleTextAttributes:dict];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    //
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
