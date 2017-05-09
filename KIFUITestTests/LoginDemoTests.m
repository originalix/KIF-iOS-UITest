//
//  LoginDemoTests.m
//  KIFUITest
//
//  Created by Lix on 2017/5/9.
//  Copyright © 2017年 Lix. All rights reserved.
//

#import "KIFofTestCaseBase.h"

@interface LoginDemoTests : KIFofTestCaseBase

@end

@implementation LoginDemoTests

- (void)beforeEach {
    [super beforeEach];
}

- (void)afterEach {
    [super afterEach];
}

- (void)testLoginSuccess {
    [tester enterText:@"lix" intoViewWithAccessibilityLabel:AccessibilityConstants.loginTextField];
    [tester enterText:@"123456" intoViewWithAccessibilityLabel:AccessibilityConstants.passwordTextField];
    [tester tapViewWithAccessibilityLabel:AccessibilityConstants.loginBtn];
    [tester waitForViewWithAccessibilityLabel:AccessibilityConstants.mainView];
}

@end
