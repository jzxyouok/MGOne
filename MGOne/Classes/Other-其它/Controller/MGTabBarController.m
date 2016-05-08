//
//  MGTabBarController.m
//  MGOne
//
//  Created by 穆良 on 16/5/9.
//  Copyright © 2016年 穆良. All rights reserved.
//

#import "MGTabBarController.h"
#import "MGHomeViewController.h"
#import "MGReadingViewController.h"
#import "MGThingViewController.h"
#import "MGQuestionViewController.h"
#import "MGPersonViewController.h"

#import "MGNavigationController.h"

@interface MGTabBarController ()

@end

@implementation MGTabBarController

+ (void)initialize
{
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    NSMutableDictionary *selAttrs = [NSMutableDictionary dictionary];
    selAttrs[NSFontAttributeName] = attrs[NSFontAttributeName]; // 不写也可以……
    selAttrs[NSForegroundColorAttributeName] = MGRGBColor(55, 196, 242);
    
    [[UITabBarItem appearance] setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:selAttrs forState:UIControlStateSelected];
    
//    rootTabBarController.tabBar.tintColor = [UIColor colorWithRed:55 / 255.0 green:196 / 255.0 blue:242 / 255.0 alpha:1];
//    rootTabBarController.tabBar.barTintColor = [UIColor colorWithRed:239 / 255.0 green:239 / 255.0 blue:239 / 255.0 alpha:1];
//    rootTabBarController.tabBar.backgroundColor = [UIColor clearColor];
    
//    [UITabBar appearance].tintColor = MGRGBColor(55, 196, 242);
//    [UITabBar appearance].barTintColor = MGRGBColor(239, 239, 239); // 整一个条的颜色
//    [UITabBar appearance].backgroundColor = [UIColor clearColor];
    
    
}
- (void)viewDidLoad {
    [super viewDidLoad];

    // 初始化子控制器
    [self setupChildViewController:[[MGHomeViewController alloc] init] title:@"首页" normalImage:@"tabbar_item_home" selectedImage:@"tabbar_item_home_selected"];
    [self setupChildViewController:[[MGReadingViewController alloc] init] title:@"文章" normalImage:@"tabbar_item_reading" selectedImage:@"tabbar_item_reading_selected"];
    [self setupChildViewController:[[MGQuestionViewController alloc] init] title:@"问题" normalImage:@"tabbar_item_reading" selectedImage:@"tabbar_item_reading_selected"];
    [self setupChildViewController:[[MGHomeViewController alloc] init] title:@"东西" normalImage:@"tabbar_item_thing" selectedImage:@"tabbar_item_thing_selected"];
    [self setupChildViewController:[[MGHomeViewController alloc] init] title:@"个人" normalImage:@"tabbar_item_person" selectedImage:@"tabbar_item_person_selected"];

}

- (void)setupChildViewController:(UIViewController *)vc title:(NSString *)title normalImage:(NSString *)normalName selectedImage:(NSString *)seletedName
{
    vc.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:normalName];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:seletedName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    MGNavigationController *nav = [[MGNavigationController alloc] initWithRootViewController:vc];
    
    [self addChildViewController:nav];
}


@end
