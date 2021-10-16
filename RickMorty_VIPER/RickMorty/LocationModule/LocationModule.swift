//
//  LocationModule.swift
//  RickMorty
//
//  Created by Kunwar on 10/13/21.
//  Copyright © 2021 Kunwar. All rights reserved.
//

import UIKit

final class LocationModule {
    func build() -> UIViewController {
        let view = LocationView()
        let interactor = LocationInteractor()
        let presenter = LocationPresenter()
        let router = LocationRouter()
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        
        router.presenter = presenter
        router.viewController = view
        
        return view
    }
}
