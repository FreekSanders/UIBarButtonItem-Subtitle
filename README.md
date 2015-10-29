# UIBarButtonItem-Subtitle

[![CI Status](http://img.shields.io/travis/Freek Sanders/UIBarButtonItem-Subtitle.svg?style=flat)](https://travis-ci.org/Freek Sanders/UIBarButtonItem-Subtitle)
[![Version](https://img.shields.io/cocoapods/v/UIBarButtonItem-Subtitle.svg?style=flat)](http://cocoapods.org/pods/UIBarButtonItem-Subtitle)
[![License](https://img.shields.io/cocoapods/l/UIBarButtonItem-Subtitle.svg?style=flat)](http://cocoapods.org/pods/UIBarButtonItem-Subtitle)
[![Platform](https://img.shields.io/cocoapods/p/UIBarButtonItem-Subtitle.svg?style=flat)](http://cocoapods.org/pods/UIBarButtonItem-Subtitle)

## UIBarButtonItem+Subtitle
This is categorization of the UIBarButtonItem.
It adds a function to enable subtitles underneath UIBarButtonItem images.

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

Then, to create a new UIBarButtonItem, use the following function:
```
- (UIBarButtonItem *)initWithImage:(UIImage *)image subtitle:(NSString *)subtitle textColor:(UIColor *)textColor target:(id)target action:(SEL)action;
```

For example:
```
self.libraryBarButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"UIButtonBarOrganize"] subtitle:NSLocalizedString(@"Library", nil) textColor:[UIColor orangeColor] target:self action:@selector(libraryBarButtonPressed:)];
```

The result is a UIBarButtonItem with the image named "UIButtonBarOrganize" and below it a text with the string "Library" in the color orange.

![My image](http://freeksanders.github.io./repository/img/UIBBarButtonImage.png)

## Requirements

## Installation

UIBarButtonItem-Subtitle is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "UIBarButtonItem-Subtitle"
```

## Author

Freek Sanders, freekisanders@gmail.com

## License

UIBarButtonItem-Subtitle is available under the MIT license. See the LICENSE file for more info.
