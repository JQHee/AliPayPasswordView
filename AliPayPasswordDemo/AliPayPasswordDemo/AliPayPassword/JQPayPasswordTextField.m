//
//  JQPayPasswordTextField.m
//  AliPayPasswordDemo
//
//  Created by HJQ on 2017/9/17.
//  Copyright © 2017年 HJQ. All rights reserved.
//

#import "JQPayPasswordTextField.h"

@implementation JQPayPasswordTextField

#pragma mark: - rewrite system method
// 禁止使用复制
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender {
    UIMenuController *menuController = [UIMenuController sharedMenuController];
    if (menuController) {
        [UIMenuController sharedMenuController].menuVisible = NO;
    }
    return NO;
}

@end
