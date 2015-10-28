//
//  FSViewController.m
//  UIBarButtonItem-Subtitle
//
//  Created by Freek Sanders on 10/28/2015.
//  Copyright (c) 2015 Freek Sanders. All rights reserved.
//

#import "FSViewController.h"
#import <UIBarButtonItem-Subtitle>

@interface FSViewController ()
@property (strong, nonatomic) UIBarButtonItem *libraryBarButton;
@property (strong, nonatomic) UIBarButtonItem *searchBarButton;
@property (strong, nonatomic) UIBarButtonItem *editBarButton;
@end

@implementation FSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self createButtons];
    self.navigationController.toolbarHidden = NO;
    self.toolbarItems = @[self.libraryBarButton, self.searchBarButton, self.editBarButton];
}

#pragma mark - Buttons

- (void)createButtons {
    self.libraryBarButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"UIButtonBarOrganize"] subtitle:NSLocalizedString(@"Library", nil) textColor:[UIColor orangeColor] target:self action:@selector(libraryBarButtonPressed:)];
    
    self.searchBarButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"UIButtonBarSearch"] subtitle:NSLocalizedString(@"Search", nil) textColor:[UIColor blackColor] target:self action:@selector(searchBarButtonPressed:)];
    
    self.editBarButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"UIButtonBarCompose"] subtitle:NSLocalizedString(@"Edit", nil) textColor:[UIColor greenColor] target:self action:@selector(editBarButtonButtonPressed)];
}

#pragma mark - Action
- (void)libraryBarButtonPressed:(UIBarButtonItem *)item {
    NSLog(@"Library button pressed");
}

- (void)searchBarButtonPressed:(UIBarButtonItem *)item {
    NSLog(@"Search button pressed");
}

- (void)editBarButtonButtonPressed {
    NSLog(@"Edit button pressed");
}

@end
