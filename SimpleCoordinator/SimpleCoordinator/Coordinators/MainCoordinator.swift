//
//  MainCoordinator.swift
//  SimpleCoordinator
//
//  Created by Kunwar, Hari on 11/1/20.
//  Copyright © 2020 Learning. All rights reserved.
//

import Foundation
import UIKit

final class MainCoordinator: Coordinator {
  var childCoordinators = [Coordinator]()
  var navigationController: UINavigationController
  
  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }
  
  func start() {
    let vc = SettingsViewController.instantiate()
    vc.coordinator = self
    navigationController.pushViewController(vc, animated: true)
  }

  func presentGeneralInfo() {
    let vc = GeneralViewController.instantiate()
    vc.coordinator = self
    navigationController.pushViewController(vc, animated: true)
  }

  func presentAboutInfo() {
    let vc = AboutViewController.instantiate()
    vc.coordinator = self
    navigationController.pushViewController(vc, animated: true)
  }

  func presentNameInfo() {
    let vc = NameViewController.instantiate()
    vc.coordinator = self
    navigationController.pushViewController(vc, animated: true)
  }
}
