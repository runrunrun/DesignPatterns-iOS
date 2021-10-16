//
//  LocationPresenter.swift
//  RickMorty
//
//  Created by Kunwar on 10/13/21.
//  Copyright © 2021 Kunwar. All rights reserved.
//

import Foundation

protocol LocationPresenterRepresentable: AnyObject {
    var view: LocationViewRepresentable? { get set }
    var router: LocationRouterRepresentable? { get set }
    var interactor: LocationInteractorRepresentable? { get set }
}

final class LocationPresenter: LocationPresenterRepresentable {
    weak var view: LocationViewRepresentable?
    var router: LocationRouterRepresentable?
    var interactor: LocationInteractorRepresentable?
}
