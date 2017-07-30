# TabNavigatable

![Swift](https://img.shields.io/badge/Swift-3.1-orange.svg)
[![CocoaPods](http://img.shields.io/cocoapods/v/TabNavigatable.svg)](https://cocoapods.org/pods/TabNavigatable)
[![Build Status](https://travis-ci.org/innocarpe/TabNavigatable.svg?branch=master)](https://travis-ci.org/innocarpe/TabNavigatable)
[![Codecov](https://img.shields.io/codecov/c/github/innocarpe/TabNavigatable.svg)](https://codecov.io/gh/innocarpe/TabNavigatable/)

## Example

```swift
class CustomTabBarViewController: UIViewController, TabNavigatable {
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

TabNavigatable is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "TabNavigatable"
```

## Contribution

For your convenience, execute the line below to generate xcodeproj.

```console
$ swift package generate-xcodeproj
```
    
## Author

Wooseong Kim, innocarpe@gmail.com

## License

TabNavigatable is available under the MIT license. See the LICENSE file for more info.
