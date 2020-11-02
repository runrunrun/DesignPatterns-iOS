//
//  Storyboarded.swift
//  SimpleCoordinator
//
//  Created by Kunwar, Hari on 11/1/20.
//  Copyright © 2020 Learning. All rights reserved.
//

import Foundation
import UIKit

protocol Storyboarded {
  static var storyboardName: String { get }
  static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
  static var storyboardName: String {
    return "Main"
  }

  static func instantiate() -> Self {
    let id = String(describing: self)
    let storyboard = UIStoryboard(name: storyboardName, bundle: .main)
    return storyboard.instantiateViewController(identifier: id) as! Self
  }
}

