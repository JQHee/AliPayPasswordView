//
//  JQPayPasswordView.h
//  AliPayPasswordDemo
//
//  Created by HJQ on 2017/9/17.
//  Copyright © 2017年 HJQ. All rights reserved.
//

#import <UIKit/UIKit.h>


@class JQPayPasswordView;

@protocol JQPayPasswordViewDelegate <NSObject>

/**
 输入密码完毕的回调
 
 @param passwordView 输入密码视图
 @param password 回调输入的密码
 */
- (void)passwordView:(JQPayPasswordView *)passwordView didFinishInputPayPassword:(NSString *)password;

/**
 忘记密码
 */
- (void)forgetPayPassword;

@end

@interface JQPayPasswordView : UIView

@property (nonatomic, weak) id<JQPayPasswordViewDelegate> delegate;

- (void)showInView:(UIView *)view;

- (void)hide;

- (void)paySuccess;

- (void)payFailureWithPasswordError:(BOOL)passwordError withErrorLimit:(NSInteger)limit;

@end
