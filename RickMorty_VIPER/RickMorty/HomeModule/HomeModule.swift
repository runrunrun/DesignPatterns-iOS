//
//  HomeModule.swift
//  RickMorty
//
//  Created by Kunwar on 10/9/21.
//  Copyright © 2021 Kunwar. All rights reserved.
//

import UIKit

final class HomeModule {
    func build() -> UIViewController {
        let view = HomeTabsView()
        let interactor = HomeInteractor()
        let presenter = HomePresenter()
        let router = HomeRouter()
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        
        router.presenter = presenter
        router.tabBarController = view
        
        presenter.setupViewControllers()
        
        return view
    }
}
