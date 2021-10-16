//
//  CharacterRouter.swift
//  RickMorty
//
//  Created by Kunwar on 10/13/21.
//  Copyright © 2021 Kunwar. All rights reserved.
//

import UIKit

protocol CharacterRouterRepresentable: AnyObject {
    var presenter: CharacterPresenterRepresentable? { get set }
    var viewController: UIViewController? { get set }
}

final class CharacterRouter: CharacterRouterRepresentable {
    weak var presenter: CharacterPresenterRepresentable?
    weak var viewController: UIViewController?
}
