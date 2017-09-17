//
//  JQPayPasswordErrorView.h
//  AliPayPasswordDemo
//
//  Created by HJQ on 2017/9/17.
//  Copyright © 2017年 HJQ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JQPayPasswordErrorView : UIView

@property (nonatomic, strong) UIButton *onceButton;
@property (nonatomic, strong) UIButton *forgetPwdButton;
@property (nonatomic, assign) NSInteger limit;

- (void)showInView:(UIView *)view;
- (void)hide;

@end
