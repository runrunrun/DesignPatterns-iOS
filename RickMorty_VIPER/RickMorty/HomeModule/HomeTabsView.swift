//
//  HomeTabsView.swift
//  RickMorty
//
//  Created by Kunwar on 10/9/21.
//  Copyright © 2021 Kunwar. All rights reserved.
//

import UIKit

protocol HomeViewRepresentable: AnyObject {
    var presenter: HomePresenterRepresentable? { set get }
    func display(_ viewControllers: [UIViewController])
}

class HomeTabsView: UITabBarController, HomeViewRepresentable {
    var presenter: HomePresenterRepresentable?
    
    func display(_ viewControllers: [UIViewController]) {
        self.viewControllers = viewControllers
    }
}
