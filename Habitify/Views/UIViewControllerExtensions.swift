//
//  UIViewControllerExtensions.swift
//  Habitify
//
//  Created by Aman Meena on 25/04/20.
//  Copyright © 2020 Aman Meena. All rights reserved.
//

import UIKit

extension UIViewController {
  static func instantiate() -> Self {
    return self.init(nibName: String(describing: self), bundle: nil)
  }
}
