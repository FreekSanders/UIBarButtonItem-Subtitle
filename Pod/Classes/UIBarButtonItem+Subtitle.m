//
//  UIBarButtonItem+Subtitle.m
//  Easy Annotate
//
//  Created by Freek Sanders on 20-04-15.
//  Copyright (c) 2015 Freek Sanders. All rights reserved.
//

#import "UIBarButtonItem+Subtitle.h"

@implementation UIBarButtonItem (Subtitle)

/* NOTE: 
    We forward any action calls on the label or view towards a separate method.
    If we would call the actions on the label or view, then the action return object 
    would incorrectly be a UIButton or UITapGestoreRecognizer instead of the expected UIBarButtonItem.
 */
- (UIBarButtonItem *)initWithImage:(UIImage *)image subtitle:(NSString *)subtitle textColor:(UIColor *)textColor target:(id)target action:(SEL)action {
    UIView *mainView =  [UIButton buttonWithType:UIButtonTypeCustom];
    [mainView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(buttonPressed)]];
    [mainView setFrame:CGRectMake(0, 0, 36, 44)];
    
    UIButton *subButton =  [UIButton buttonWithType:UIButtonTypeCustom];
    [subButton setImage:image forState:UIControlStateNormal];
    [subButton addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside];
    [subButton setFrame:CGRectMake(7, 12, 22, 22)];
    [mainView addSubview:subButton];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 34, 36, 10)];
    [label setFont:[UIFont systemFontOfSize:7]];
    [label setText:subtitle];
    [label setTextAlignment:NSTextAlignmentCenter];
    [label setTextColor:textColor];
    [label addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(buttonPressed)]];
    [mainView addSubview:label];
    
    self = [self initWithCustomView:mainView];
    self.action = action;
    self.target = target;
    return self;
}

/* NOTE:
    Normally we would use performSelector, however this will create a warning about possible leakage.
    This solution is based on the following discussion:
    http://stackoverflow.com/questions/7017281/performselector-may-cause-a-leak-because-its-selector-is-unknown
 */
- (void)buttonPressed {
    if (!self.target) { return; }
    SEL selector = self.action;
    IMP imp = [self.target methodForSelector:selector];
    void (*func)(id, SEL, UIBarButtonItem *) = (void *)imp;
    func(self.target, selector, self);
}

@end
