//
//  UIBarButtonItem+Subtitle.h
//  Easy Annotate
//
//  Created by Freek Sanders on 20-04-15.
//  Copyright (c) 2015 Freek Sanders. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Subtitle)
- (UIBarButtonItem *)initWithImage:(UIImage *)image subtitle:(NSString *)subtitle textColor:(UIColor *)textColor target:(id)target action:(SEL)action;
@end
