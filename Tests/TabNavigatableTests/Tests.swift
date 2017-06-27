import UIKit
import XCTest

@testable import TabNavigatable

class Tests: XCTestCase {
  fileprivate var tabBarViewController: TabBarViewController!
  
  override func setUp() {
    super.setUp()
    
    tabBarViewController = TabBarViewController()
    tabBarViewController.viewControllers.append(UIViewController())
    tabBarViewController.viewControllers.append(UIViewController())
    tabBarViewController.viewControllers.append(UIViewController())
  }
  
  func testTabNavigatable() {
    XCTAssertNotNil(tabBarViewController)
    
    tabBarViewController.changeActiveViewController(index: 0)
    XCTAssertEqual(tabBarViewController.activeViewController, tabBarViewController.viewControllers[0])
    
    tabBarViewController.changeActiveViewController(index: 1)
    XCTAssertEqual(tabBarViewController.activeViewController, tabBarViewController.viewControllers[1])
    
    tabBarViewController.changeActiveViewController(index: 2)
    XCTAssertEqual(tabBarViewController.activeViewController, tabBarViewController.viewControllers[2])
  }
}

fileprivate final class TabBarViewController: UIViewController, TabNavigatable {
  var containerView: UIView! = UIView()
  var viewControllers: [UIViewController]! = [UIViewController]()
  
  var tabIndex: Int {
    get {
      for (index, viewController) in viewControllers.enumerated() {
        if viewController === activeViewController {
          return index
        }
      }
      return -1
    }
  }
}
