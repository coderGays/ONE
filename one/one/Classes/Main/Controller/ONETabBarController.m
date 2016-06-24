//
//  ONETabBarController.m
//  one
//
//  Created by TimorYang on 16/6/23.
//  Copyright © 2016年 TimorYang. All rights reserved.
//
/****** 思路 ******/
/*
 1.TabBarController的事情自己做
    > 添加子控制器,不需要让外界知道,内部实现
    > 外界只要一创建你这个控制器就已经添加好子控制器了
*/

/****** 步骤 ******/
/*
 1.添加子控制器 (addChildViewControllers)
 2.设置TabBarItem的标题和图片 (setChildViewControllerTitle)
 
 */

/****** Bug/问题总结 ******/
/*
 问题:TabBarItem的图片和标题被渲染
 解决方法:使用代码禁止图片渲染 (给UIImage添加一个分类,设置image的模式)
         获取全局的TabBarItem,通过设置富文本属性,让标题不被渲染
 */

#import "ONETabBarController.h"
#import "ONENavigationController.h"
#import "UIImage+image.h"
#import "ONEHomeViewController.h"

@interface ONETabBarController ()

@end

@implementation ONETabBarController

//禁止TabBarItem的标题和图片被渲染,只要设置一次就可以了
+ (void)load
{
    //获取全局ONETabBarController的TabBarItem
    UITabBarItem *item = [UITabBarItem appearanceWhenContainedIn:self, nil];
    
    //设置属性
    //模型一般都是通过富文本属性去设置标题的颜色,字体,大小...
    
    //创建一个可变字典保存TabBarItem正常状态下的属性
    NSMutableDictionary *norAttrTitle = [NSMutableDictionary dictionary];
    //字体大小属性
    norAttrTitle[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    //加载属性
    [item setTitleTextAttributes:norAttrTitle forState:UIControlStateNormal];
    
    //创建一个可变字典保存TabBarItem选中状态下的属性
    NSMutableDictionary *selAttrTitle = [NSMutableDictionary dictionary];
    //字体大小属性
    selAttrTitle[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    //字体颜色
    selAttrTitle[NSForegroundColorAttributeName] = ONEColor(0, 156, 252, 1);
    //加载属性
    [item setTitleTextAttributes:selAttrTitle forState:UIControlStateSelected];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //添加子控制器
    [self addChildViewControllers];
    
    //设置标题
    [self setChildViewControllerTitle];
}

#pragma mark - 添加子控制器
- (void)addChildViewControllers
{
    //创建Home导航控制器
    ONEHomeViewController *homeVC = [[ONEHomeViewController alloc]init];
    ONENavigationController *navHome = [[ONENavigationController alloc]initWithRootViewController:homeVC];
    [self addChildViewController:navHome];
    
    //创建Read导航控制器
    ONENavigationController *navRead = [[ONENavigationController alloc]init];
    [self addChildViewController:navRead];
    
    //创建Music导航控制器
    ONENavigationController *navMusic = [[ONENavigationController alloc]init];
    [self addChildViewController:navMusic];
    
    //创建Movie导航控制器
    ONENavigationController *navMovie = [[ONENavigationController alloc]init];
    [self addChildViewController:navMovie];
    
}

#pragma mark - 添加标题和图片
- (void) setChildViewControllerTitle
{
    //Home
    ONENavigationController *navHome = self.childViewControllers[0];
    navHome.tabBarItem.title = @"首页";
    //正常状态
    navHome.tabBarItem.image = [UIImage imageNamed:@"tab_home_normal"];
    //选中状态
    navHome.tabBarItem.selectedImage = [UIImage imageWithOriginalName:@"tab_home_selected"];
    
    //Read
    ONENavigationController *navRead = self.childViewControllers[1];
    navRead.tabBarItem.title = @"阅读";
    //正常状态
    navRead.tabBarItem.image = [UIImage imageNamed:@"tab_read_normal"];
    //选中状态
    navRead.tabBarItem.selectedImage = [UIImage imageWithOriginalName:@"tab_read_selected"];
    
    //Music
    ONENavigationController *navMusic = self.childViewControllers[2];
    navMusic.tabBarItem.title = @"音乐";
    //正常状态
    navMusic.tabBarItem.image = [UIImage imageNamed:@"tab_music_normal"];
    //选中状态
    navMusic.tabBarItem.selectedImage = [UIImage imageWithOriginalName:@"tab_music_selected"];
    
    //Movie
    ONENavigationController *navMovie = self.childViewControllers[3];
    navMovie.tabBarItem.title = @"电影";
    //正常状态
    navMovie.tabBarItem.image = [UIImage imageNamed:@"tab_movie_normal"];
    //选中状态
    navMovie.tabBarItem.selectedImage = [UIImage imageWithOriginalName:@"tab_movie_selected"];
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
