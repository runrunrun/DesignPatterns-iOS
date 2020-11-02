//
//  AboutViewController.swift
//  SimpleCoordinator
//
//  Created by Kunwar, Hari on 11/1/20.
//  Copyright © 2020 Learning. All rights reserved.
//

import UIKit

final class AboutViewController: UIViewController, Storyboarded {
  weak var coordinator: MainCoordinator?

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func presentName(_ sender: Any) {
    coordinator?.presentNameInfo()
  }
}
