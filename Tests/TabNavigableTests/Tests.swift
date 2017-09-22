#if os(iOS) || os(tvOS)
import UIKit
import XCTest

@testable import TabNavigable

class Tests: XCTestCase {
  fileprivate var tabBarViewController: TabBarViewController!
  
  override func setUp() {
    super.setUp()
    
    tabBarViewController = TabBarViewController()
    tabBarViewController.viewControllers.append(UIViewController())
    tabBarViewController.viewControllers.append(UIViewController())
    tabBarViewController.viewControllers.append(UIViewController())
  }
  
  func testTabNavigable() {
    XCTAssertNotNil(tabBarViewController)
    
    tabBarViewController.changeActiveViewController(index: 0)
    XCTAssertEqual(tabBarViewController.activeViewController, tabBarViewController.viewControllers[0])
    
    tabBarViewController.changeActiveViewController(index: 1)
    XCTAssertEqual(tabBarViewController.activeViewController, tabBarViewController.viewControllers[1])
    
    tabBarViewController.changeActiveViewController(index: 2)
    XCTAssertEqual(tabBarViewController.activeViewController, tabBarViewController.viewControllers[2])
  }
}

fileprivate final class TabBarViewController: UIViewController, TabNavigable {
  var containerView: UIView! = UIView()
  var viewControllers: [UIViewController]! = [UIViewController]()
}
#endif
