//
//  SDCommonViewController.m
//  SDWebImageDemo
//
//  Created by myz on 2020/9/10.
//  Copyright © 2020 myz. All rights reserved.
//

#import "SDCommonViewController.h"

@interface SDCommonViewController () <QMUINavigationControllerDelegate>

@end

@implementation SDCommonViewController

- (void)handBackButtonEvent {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UIViewController *rootViewController = self.navigationController.qmui_rootViewController;
    if (rootViewController && rootViewController != self) {
            self.navigationItem.leftBarButtonItem = [UIBarButtonItem qmui_backItemWithTarget:self action:@selector(handBackButtonEvent)];
        }
}


#pragma mark - delegate

- (nullable UIColor *)navigationBarTintColor {
    return [UIColor whiteColor];
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

- (BOOL)preferredNavigationBarHidden {
    return NO;
}

- (BOOL)shouldCustomizeNavigationBarTransitionIfHideable {
    return YES;
}

- (BOOL)shouldHideKeyboardWhenTouchInView:(UIView *)view {
    return YES;
}

- (BOOL)forceEnableInteractivePopGestureRecognizer {
    return YES;
}


@end
