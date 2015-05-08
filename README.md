# UINavigationControllerGameFade

[![CI Status](http://img.shields.io/travis/Albert M/UINavigationControllerGameFade.svg?style=flat)](https://travis-ci.org/Albert M/UINavigationControllerGameFade)
[![Version](https://img.shields.io/cocoapods/v/UINavigationControllerGameFade.svg?style=flat)](http://cocoapods.org/pods/UINavigationControllerGameFade)
[![License](https://img.shields.io/cocoapods/l/UINavigationControllerGameFade.svg?style=flat)](http://cocoapods.org/pods/UINavigationControllerGameFade)
[![Platform](https://img.shields.io/cocoapods/p/UINavigationControllerGameFade.svg?style=flat)](http://cocoapods.org/pods/UINavigationControllerGameFade)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

UINavigationControllerGameFade gives you the functionality to make fade transitions such as,

Push:

```
SampleViewController *sample = [self.storyboard instantiateViewControllerWithIdentifier:@"sampleviewcontroller"];
[self.navigationController pushFadeViewController:sample];
```

Pop:

```
[self.navigationController popFadeViewController];
```

Reset root view controller:

```
SampleViewController *sample = [self.storyboard instantiateViewControllerWithIdentifier:@"sampleviewcontroller"];
[self.navigationController resetRootViewController:sample andPop:YES];
```

Replace current view controller with an other view controller:

```
SampleViewController *sample = [self.storyboard instantiateViewControllerWithIdentifier:@"sampleviewcontroller"];
[self.navigationController replaceCurrentViewControllerWithViewController:sample];
```

Or even replace the current view controller and some other view controllers in the stack with another view controller:

```
SampleViewController *sample = [self.storyboard instantiateViewControllerWithIdentifier:@"sampleviewcontroller"];
[self.navigationController replaceCountViewControllers:2 withViewController:sample];
```

Test the sample app to see the power of this features!


## Requirements

iOS 6 and above.

## Installation

UINavigationControllerGameFade is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "UINavigationControllerGameFade"
```

## Author

Albert Montserrat, albert.montserrat.gambus@gmail.com

## License

UINavigationControllerGameFade is available under the MIT license. See the LICENSE file for more info.
