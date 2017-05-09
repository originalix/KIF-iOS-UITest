//
//  KIFofTestCaseBase.h
//  KIFUITest
//
//  Created by Lix on 2017/5/9.
//  Copyright © 2017年 Lix. All rights reserved.
//

#import "AccessibilityConstants.h"
#import "UIAccessibilityElement-KIFAdditions.h"

#import <KIF/KIF.h>
#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface KIFofTestCaseBase : KIFTestCase

- (UIView *)waitForViewWithAccessibilityIdentifier:(NSString *)accessibilityIdentifier;
- (void)swipeViewWithAccessibilityIdentifier:(NSString *)identifier inDirection:(KIFSwipeDirection)direction;

@end
