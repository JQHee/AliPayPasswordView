//
//  ViewController.m
//  AliPayPasswordDemo
//
//  Created by HJQ on 2017/9/17.
//  Copyright © 2017年 HJQ. All rights reserved.
//

#import "ViewController.h"
#import "JQPayPasswordView.h"

@interface ViewController ()<JQPayPasswordViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark: - action methods
- (IBAction)payBtnAction:(id)sender {
    JQPayPasswordView *payPasswordView = [[JQPayPasswordView alloc] init];
    payPasswordView.delegate = self;
    [payPasswordView showInView:self.view];
}

#pragma mark - HHPayPasswordViewDelegate
- (void)passwordView:(JQPayPasswordView *)passwordView didFinishInputPayPassword:(NSString *)password{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        if ([password isEqualToString:@"000000"]) {
            [passwordView paySuccess];
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [passwordView hide];
                NSLog(@"跳转成功结果页面");

            });
        }else{
            [passwordView payFailureWithPasswordError:YES withErrorLimit:3];
        }
    });
}

- (void)forgetPayPassword{
    NSLog(@"忘记密码");
}


@end
