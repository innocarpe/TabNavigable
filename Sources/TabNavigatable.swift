//
//  TabNavigatable.swift
//  elemark-Care
//
//  Created by Wooseong Kim on 2017. 6. 26..
//  Copyright © 2017년 BBB Tech Inc. All rights reserved.
//

import UIKit

// MARK: Protocol

public protocol TabNavigatable: class, AssociatedObjectStore {
  var containerView: UIView! { get set }
  var viewControllers: [UIViewController]! { get set }
}

// MARK: - Protocol extension

private var activeViewControllerKey = "activeViewController"

extension TabNavigatable where Self: UIViewController {
  
  public func changeActiveViewController(index: Int) {
    if index < viewControllers.count {
      activeViewController = viewControllers[index]
    } else {
      fatalError("Index must be less than viewControllers.count")
    }
  }
  
  var activeViewController: UIViewController? {
    get { return associatedObject(forKey: &activeViewControllerKey) }
    set {
      let oldValue = activeViewController
      
      if newValue != nil {
        setAssociatedObject(newValue, forKey: &activeViewControllerKey)
        
        removeInactiveViewController(inactiveViewController: oldValue)
        updateActiveViewController()
      }
    }
  }
  
  private func removeInactiveViewController(inactiveViewController: UIViewController?) {
    if let inActiveVC = inactiveViewController {
      // call before removing child view controller's view from hierarchy
      inActiveVC.willMove(toParentViewController: nil)
      
      inActiveVC.view.removeFromSuperview()
      
      // call after removing child view controller's view from hierarchy
      inActiveVC.removeFromParentViewController()
    }
  }
  
  private func updateActiveViewController() {
    if let activeVC = activeViewController {
      // call before adding child view controller's view as subview
      addChildViewController(activeVC)
      
      activeVC.view.frame = containerView.bounds
      containerView.addSubview(activeVC.view)
      
      // call before adding child view controller's view as subview
      activeVC.didMove(toParentViewController: self)
    }
  }
}
