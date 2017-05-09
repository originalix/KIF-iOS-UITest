//
//  LoginViewController.m
//  KIFUITest
//
//  Created by Lix on 2017/5/9.
//  Copyright © 2017年 Lix. All rights reserved.
//

#import "LoginViewController.h"
#import "MainViewController.h"

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
    self.loginTextField.isAccessibilityElement = YES;
    self.loginTextField.accessibilityLabel = @"loginTextField";
    self.passwordTextField.isAccessibilityElement = YES;
    self.passwordTextField.accessibilityLabel = @"passwordTextField";
    self.loginBtn.isAccessibilityElement = YES;
    self.loginTextField.accessibilityLabel = @"loginBtn";
}

- (IBAction)loginAction:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    MainViewController *mainVC = [storyboard instantiateViewControllerWithIdentifier:@"MainViewController"];
    [self.navigationController pushViewController:mainVC animated:true];
}

@end
