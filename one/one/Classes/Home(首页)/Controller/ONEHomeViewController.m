//
//  ONEHomeViewController.m
//  one
//
//  Created by TimorYang on 16/6/23.
//  Copyright © 2016年 TimorYang. All rights reserved.
//
/****** 思路 ******/
/*
1.导航控制器的NavigationBar的内容是由栈顶控制器的View决定的 => 首页的导航条内容我要在首页的控制器中设置
 */
/****** 步骤 ******/
/*
 1.设置导航条内容 => view加载完毕的时候就要设置好导航条的内容
    > 设置中间view (美工提供了ONE的图片)
    > 设置左右两边的Item
 2.分层
    > 下面是一个View
    > 上面是一个collectionView
 
 
 */

/****** Bug/问题总结 ******/
/*
 Bug:导航栏的两边Item上的按钮
    > 当鼠标点击Item上按钮时,发现鼠标不在按钮上时,也能点击
 */
#import "ONEHomeViewController.h"
#import "UIImage+image.h"
#import "UIBarButtonItem+item.h"
#import "ONEBottomView.h"

@interface ONEHomeViewController ()

@end

@implementation ONEHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = ONEBackgroundColor;
    
    //设置导航栏内容
    [self setupNavigationBar];
    
    //添加底部的View
    [self setupToolsView];
    
    
    
}

- (void)viewWillAppear:(BOOL)animated
{
    
}

#pragma mark - 设置导航栏内容
- (void)setupNavigationBar
{
    //设置标题
    UIImageView *titleIamgeView = [[UIImageView alloc]initWithImage:[UIImage imageWithOriginalName:@"nav_home_title"]];
    self.navigationItem.titleView = titleIamgeView;
    //设置左边的按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem buttomWithImage:[UIImage imageWithOriginalName:@"icon_search"] highLight:nil target:self action:@selector(search)];
    //设置右边按钮
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem buttomWithImage:[UIImage imageWithOriginalName:@"nav_me_normal"] highLight:[UIImage imageWithOriginalName:@"nav_me_highlighted"] target:self action:@selector(me)];
}

#pragma mark - search(事件)
- (void)search
{
    NSLog(@"点击了search");
}

#pragma mark - me(事件)
- (void)me
{
    NSLog(@"点击了me");
}

#pragma mark - 添加底部的背景View
- (void)setupToolsView
{
    //位置和尺寸
    CGFloat toolsView_x = 0;
    CGFloat toolsView_y = ONEScreenH * 0.83;
    CGFloat toolsView_w = ONEScreenW;
    CGFloat toolsView_h = 42;
    //创建UIView
    UIView *toolsView = [[UIView alloc]initWithFrame:CGRectMake(toolsView_x, toolsView_y, toolsView_w, toolsView_h)];
    //设置背景颜色
    toolsView.backgroundColor = ONEBackgroundColor;
    //创建
    ONEBottomView *bottomView = [ONEBottomView bottomView];
    //添加到ToolsView
    bottomView.frame = toolsView.bounds;
    [toolsView addSubview:bottomView];
    //添加到view上
    [self.view addSubview:toolsView];
    
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
