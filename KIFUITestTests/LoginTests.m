//
//  LoginTests.m
//  KIFUITest
//
//  Created by Lix on 2017/5/9.
//  Copyright © 2017年 Lix. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <KIF/KIF.h>

@interface LoginTests : KIFTestCase

@end

@implementation LoginTests

- (void)beforeEach {
}

- (void)afterEach {
}

- (void)testSuccessfulLogin {
    [tester enterText:@"lix" intoViewWithAccessibilityLabel:@"Login User Name"];
    [tester enterText:@"123456" intoViewWithAccessibilityLabel:@"Login Password"];
    [tester tapViewWithAccessibilityLabel:@"Log In"];
    [tester waitForViewWithAccessibilityLabel:@"MainView"];
}

@end
