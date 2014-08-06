# TheCatAPI

[![CI Status](http://img.shields.io/travis/Nate Bailey/TheCatAPI.svg?style=flat)](https://travis-ci.org/Nate Bailey/TheCatAPI)
[![Version](https://img.shields.io/cocoapods/v/TheCatAPI.svg?style=flat)](http://cocoadocs.org/docsets/TheCatAPI)
[![License](https://img.shields.io/cocoapods/l/TheCatAPI.svg?style=flat)](http://cocoadocs.org/docsets/TheCatAPI)
[![Platform](https://img.shields.io/cocoapods/p/TheCatAPI.svg?style=flat)](http://cocoadocs.org/docsets/TheCatAPI)

      ∆    ∆
    >( - . - )<
     (  u u  ) "\\
     ( )____( )=//

## Usage

**For a fresh, kitty-populated UIImageView**

	// A new UIImageView populated with a cat image
	UIImageView *happyImageView = [UIImageView imageViewWithCatImage];

  	// A new UIImageView populated with a cat image from a certain category
  	UIImageView *catInABox = [UIImageView imageViewWithCatImageWithCategory:CATegoryBoxes];

**For making existing UIImageViews much more enjoyable**

	UIImageView *sadImageView = [[UIImageView alloc] init];

  	// Populate an existing UIImageView with a cat image
  	[sadImageView useCatImage];

  	// Populate an existing UIImageView with a cat image from a certain category
  	[sadImageView useCatImageWithCategory:CATegoryHats];


To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

TheCatAPI is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "TheCatAPI"

## Author

Nate Bailey, nate@inthepin.es

## License

TheCatAPI is available under the MIT license. See the LICENSE file for more info.

