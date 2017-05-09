//
//  LoginViewController.m
//  KIFUITest
//
//  Created by Lix on 2017/5/9.
//  Copyright © 2017年 Lix. All rights reserved.
//

#import "LoginViewController.h"
#import "MainViewController.h"
#import "AccessibilityConstants.h"
#import "UIView+AccessibilityForDebug.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *loginTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addAccessibilityLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)addAccessibilityLabel {
    [self.loginTextField setAccessibilityLabelForDebug:AccessibilityConstants.loginTextField];
    [self.passwordTextField setAccessibilityLabelForDebug:AccessibilityConstants.passwordTextField];
    [self.loginBtn setAccessibilityLabelForDebug:AccessibilityConstants.loginBtn];
}

- (IBAction)loginAction:(id)sender {
    if ([self.loginTextField.text isEqualToString:@"lix"] && [self.passwordTextField.text isEqualToString:@"123456"]) {
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        MainViewController *mainVC = [storyboard instantiateViewControllerWithIdentifier:@"MainViewController"];
        [self.navigationController pushViewController:mainVC animated:true];

    }else {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"提示" message:@"登录失败" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            [alertController dismissViewControllerAnimated:YES completion:NULL];
        }];
        alertController.isAccessibilityElement = YES;
        alertController.accessibilityLabel = AccessibilityConstants.loginAlert;
        [alertController addAction:action];
        [self presentViewController:alertController animated:YES completion:NULL];
    }
}

@end
