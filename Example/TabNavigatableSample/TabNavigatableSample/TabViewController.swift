//
//  TabViewController.swift
//  TabNavigatableSample
//
//  Created by Wooseong Kim on 2017. 6. 27.
//  Copyright © 2017 Wooseong Kim. All rights reserved.
//

import UIKit

class TabViewController: UIViewController {

//  @IBOutlet weak var tabNumberLabel: UILabel!
  @IBOutlet weak var numberLabel: UILabel!
  
  var tabNumber = -1
  var backgroundColor = UIColor.black
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = backgroundColor
    numberLabel.text = String(tabNumber)
  }
}
