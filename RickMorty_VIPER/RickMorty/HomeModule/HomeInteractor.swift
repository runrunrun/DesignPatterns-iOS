//
//  HomeInteractor.swift
//  RickMorty
//
//  Created by Kunwar on 10/9/21.
//  Copyright © 2021 Kunwar. All rights reserved.
//

import Foundation

protocol HomeInteractorRepresentable: AnyObject {
    var presenter: HomePresenterRepresentable? { set get }
}

final class HomeInteractor: HomeInteractorRepresentable {
    weak var presenter: HomePresenterRepresentable?
}
