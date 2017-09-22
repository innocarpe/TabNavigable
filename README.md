# TabNavigable

![Swift](https://img.shields.io/badge/Swift-4.0-orange.svg)
[![CocoaPods](http://img.shields.io/cocoapods/v/TabNavigable.svg)](https://cocoapods.org/pods/TabNavigable)
[![Build Status](https://travis-ci.org/innocarpe/TabNavigable.svg?branch=master)](https://travis-ci.org/innocarpe/TabNavigable)
[![Codecov](https://img.shields.io/codecov/c/github/innocarpe/TabNavigable.svg)](https://codecov.io/gh/innocarpe/TabNavigable/)

## Example

```swift
class CustomTabBarViewController: UIViewController, TabNavigable {
  var containerView: UIView!
  var viewControllers: [UIViewController]! = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    initViewControllers()
  }
  
  private func initViewControllers() {
    addViewController()
    addViewController()
    addViewController()
    
    changeActiveViewController(index: 0)
  }
  
  private func addViewController() {
    let viewController = YourTabViewController()
    viewControllers.append(viewController)
  }
  
  func tabButtonDidTap(index: Int) {
    changeActiveViewController(index: index)
  }
}
```

## Installation

TabNavigable is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "TabNavigable"
```

## Contribution

For your convenience, execute the line below to generate xcodeproj.

```console
$ swift package generate-xcodeproj
```
    
## Author

Wooseong Kim, innocarpe@gmail.com

## License

TabNavigable is available under the MIT license. See the LICENSE file for more info.
