//
//  SettingsViewController.swift
//  SimpleCoordinator
//
//  Created by Kunwar, Hari on 11/1/20.
//  Copyright © 2020 Learning. All rights reserved.
//

import UIKit

final class SettingsViewController: UIViewController, Storyboarded {
  weak var coordinator: MainCoordinator?

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func presentGeneralInfo(_ sender: Any) {
    coordinator?.presentGeneralInfo()
  }

  @IBAction func presentAboutInfo(_ sender: Any) {
    coordinator?.presentAboutInfo()
  }
}

