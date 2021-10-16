//
//  LocationInteractor.swift
//  RickMorty
//
//  Created by Kunwar on 10/13/21.
//  Copyright © 2021 Kunwar. All rights reserved.
//

import Foundation

protocol LocationInteractorRepresentable: AnyObject {
    var presenter: LocationPresenterRepresentable? { get set }
}

final class LocationInteractor: LocationInteractorRepresentable {
    weak var presenter: LocationPresenterRepresentable?
}
