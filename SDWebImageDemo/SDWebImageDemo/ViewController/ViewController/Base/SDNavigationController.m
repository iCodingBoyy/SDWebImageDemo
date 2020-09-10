//
//  SDNavigationController.m
//  SDWebImageDemo
//
//  Created by myz on 2020/9/10.
//  Copyright © 2020 myz. All rights reserved.
//

#import "SDNavigationController.h"

@interface SDNavigationController () <QMUINavigationControllerDelegate>

@end

@implementation SDNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (UIImage*)navigationBarBackgroundImage {
    UIColor *color = [UIColor qmui_colorWithHexString:@"#FF4275"];
    CGSize size = CGSizeMake(SCREEN_WIDTH, 88);
    UIImage *image = [UIImage qmui_imageWithColor:color size:size cornerRadius:0];
    return image;
}

- (UIImage*)navigationBarShadowImage {
    UIColor *color = [UIColor qmui_colorWithHexString:@"#E1E1E1"];
    CGSize size = CGSizeMake(SCREEN_WIDTH, 0.5);
    UIImage *image = [UIImage qmui_imageWithColor:color size:size cornerRadius:0];
    return image;
}

/// 设置 titleView 的 tintColor
- (nullable UIColor *)titleViewTintColor {
    return [UIColor whiteColor];
}


/// 设置当前导航栏的 barTintColor，默认为 NavBarBarTintColor
- (nullable UIColor *)navigationBarBarTintColor {
    return [UIColor whiteColor];
}

- (nullable UIColor *)navigationBarTintColor
{
    return [UIColor whiteColor];
}

- (BOOL)preferredNavigationBarHidden
{
    return NO;
}

- (BOOL)shouldCustomizeNavigationBarTransitionIfHideable
{
    return YES;
}


@end
