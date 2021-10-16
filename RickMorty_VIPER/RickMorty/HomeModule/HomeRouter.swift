//
//  HomeRouter.swift
//  RickMorty
//
//  Created by Kunwar on 10/9/21.
//  Copyright © 2021 Kunwar. All rights reserved.
//

import UIKit

protocol HomeRouterRepresentable: AnyObject {
    var presenter: HomePresenterRepresentable? { set get }
    var tabBarController: UITabBarController? { set get }
    func viewControllers() -> [UIViewController]
}

final class HomeRouter: HomeRouterRepresentable {
    weak var presenter: HomePresenterRepresentable?
    weak var tabBarController: UITabBarController?
    
    func viewControllers() -> [UIViewController] {
        return [
            CharacterModule().build(),
            LocationModule().build()
            ].map { UINavigationController(rootViewController: $0) }
    }
}
