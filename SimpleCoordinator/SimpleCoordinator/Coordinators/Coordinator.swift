//
//  Coordinator.swift
//  SimpleCoordinator
//
//  Created by Kunwar, Hari on 11/1/20.
//  Copyright © 2020 Learning. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
  var childCoordinators: [Coordinator] { get set }
  var navigationController: UINavigationController { get set }
  
  func start()
}
