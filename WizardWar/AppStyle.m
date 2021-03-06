//
//  FontsStyle.m
//  WizardWar
//
//  Created by Sean Hess on 5/31/13.
//  Copyright (c) 2013 The LAB. All rights reserved.
//

#import "AppStyle.h"
#import "MenuButton.h"
#import "UIColor+Hex.h"

@implementation AppStyle

+(void)customizeUIKitStyles {
    /// UI APPEARANCE /////////////
    
    // GENERIC NAVIGATION BAR
    [[UINavigationBar appearance] setTitleTextAttributes:@{UITextAttributeTextColor: [UIColor whiteColor]}];
    
    [[UINavigationBar appearance] setBackgroundImage:[self imageWithColor:self.blueNavColor] forBarMetrics:UIBarMetricsDefault];
    
    
    // BUTTONS
//  [[UIBarButtonItem appearance] setBackButtonBackgroundImage:[UIImage imageNamed:@"navbar-back-button.png"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
}

+(UIColor*)blueNavColor {
    return [UIColor colorFromRGB:0x67B0DF];
}

+(UIImage*)blueNavColorImage {
    return [self imageWithColor:self.blueNavColor];
}

+(UIColor*)yellowButtonTextColor {
    return [UIColor colorFromRGB:0x151616];
}

+(UIColor*)yellowButtonTextShadowColor {
    return [UIColor colorFromRGB:0xFDF06A];
}

+(UIColor*)greenGrassColor {
    return [UIColor colorFromRGB:0x6CA24A];
}

+(UIColor*)greenOnlineColor {
    return [UIColor colorFromRGB:0x81B23C];
}

+(UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0, 0, 1, 1);
    // Create a 1 by 1 pixel context
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    [color setFill];
    UIRectFill(rect);   // Fill it with your color
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

+(UIColor*)redErrorColor {
    return [UIColor colorFromRGB:0xE42303];
}

+(UIColor*)grayLockedColor {
    return [UIColor colorFromRGB:0x8F8F8F];
}

+(UIColor*)yellowWarningColor {
    return [UIColor colorFromRGB:0xF2FEA1];
}

+(UIColor*)blueMessageColor {
    return [UIColor colorFromRGB:0xE6F1FE];
}

+(UIColor*)lightBackgroundColor {
    return [UIColor colorFromRGB:0xE3E3E3];
}

@end
