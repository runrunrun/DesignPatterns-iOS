//
//  LocationRouter.swift
//  RickMorty
//
//  Created by Kunwar on 10/13/21.
//  Copyright © 2021 Kunwar. All rights reserved.
//

import UIKit

protocol LocationRouterRepresentable: AnyObject {
    var presenter: LocationPresenterRepresentable? { get set }
    var viewController: UIViewController? { get set }
}

final class LocationRouter: LocationRouterRepresentable {
    var presenter: LocationPresenterRepresentable?
    weak var viewController: UIViewController?
}
