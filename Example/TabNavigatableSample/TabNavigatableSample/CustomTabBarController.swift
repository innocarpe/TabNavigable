//
//  ViewController.swift
//  TabNavigatableSample
//
//  Created by Wooseong Kim on 2017. 6. 27.
//  Copyright © 2017 Wooseong Kim. All rights reserved.
//

import UIKit

import TabNavigatable

class CustomTabBarController: UIViewController, TabNavigatable {

  @IBOutlet weak var containerView: UIView!
  var viewControllers: [UIViewController]! = [UIViewController]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    initViewControllers()
  }
  
  private func initViewControllers() {
    addViewController(index: 0, backgroundColor: UIColor.cyan)
    addViewController(index: 1, backgroundColor: UIColor.orange)
    addViewController(index: 2, backgroundColor: UIColor.magenta)
    
    changeActiveViewController(index: 0)
  }
  
  private func addViewController(index: Int, backgroundColor: UIColor) {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    
    let viewController = storyboard.instantiateViewController(withIdentifier: "TabViewController") as! TabViewController
    viewController.tabNumber = index + 1
    viewController.backgroundColor = backgroundColor
    
    viewControllers.append(viewController)
  }

  @IBAction func firstTabDidTap(_ sender: Any) {
    changeActiveViewController(index: 0)
  }
  
  @IBAction func secondTabDidTap(_ sender: Any) {
    changeActiveViewController(index: 1)
  }
  
  @IBAction func thirdTabDidTap(_ sender: Any) {
    changeActiveViewController(index: 2)
  }
}

