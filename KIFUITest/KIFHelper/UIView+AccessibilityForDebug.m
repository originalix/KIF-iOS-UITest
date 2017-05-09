//
//  UIView+AccessibilityForDebug.m
//  KIFUITest
//
//  Created by Lix on 2017/5/9.
//  Copyright © 2017年 Lix. All rights reserved.
//

#import "UIView+AccessibilityForDebug.h"

@implementation UIView (AccessibilityForDebug)

- (void)setAccessibilityLabelForDebug:(NSString *)accessibilityLabel {
#if (defined DEBUG || defined COVERAGE)
    self.isAccessibilityElement = YES;
    self.accessibilityLabel = accessibilityLabel;
#endif
}

@end
