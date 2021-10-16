//
//  HomePresenter.swift
//  RickMorty
//
//  Created by Kunwar on 10/9/21.
//  Copyright © 2021 Kunwar. All rights reserved.
//

import Foundation

protocol HomePresenterRepresentable: AnyObject {
    var view: HomeViewRepresentable? { set get }
    var router: HomeRouterRepresentable? { set get }
    var interactor: HomeInteractorRepresentable? { set get }
}

final class HomePresenter: HomePresenterRepresentable {
    weak var view: HomeViewRepresentable?
    var router: HomeRouterRepresentable?
    var interactor: HomeInteractorRepresentable?
    
    func setupViewControllers() {
        view?.display(router?.viewControllers() ?? [])
    }
}
