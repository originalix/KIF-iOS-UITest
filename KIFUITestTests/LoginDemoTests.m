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

- (void)testLoginFailed {
    [tester enterText:@"lix123" intoViewWithAccessibilityLabel:AccessibilityConstants.loginTextField];
    [tester enterText:@"123456" intoViewWithAccessibilityLabel:AccessibilityConstants.passwordTextField];
    [tester tapViewWithAccessibilityLabel:AccessibilityConstants.loginBtn];
    [tester waitForViewWithAccessibilityLabel:@"登录失败"];
}

- (void)testMainTableView {
    [self testLoginSuccess];
    UITableView *tableView = (UITableView*)[tester waitForViewWithAccessibilityLabel:AccessibilityConstants.mainTableView];
    NSInteger firstCount = [tableView numberOfRowsInSection:0];
    [tester swipeRowAtIndexPath:[NSIndexPath indexPathForRow:5 inSection:0] inTableView:tableView inDirection:KIFSwipeDirectionLeft];
    [tester tapViewWithAccessibilityLabel:@"删除"];
    NSInteger lastCount = [tableView numberOfRowsInSection:0];
    XCTAssertTrue(firstCount == lastCount + 1);
    NSError *err = nil;
    XCTAssertTrue([tester tryFindingViewWithAccessibilityLabel:@"第6行" error:&err], @"删除cell失败");
}


@end
