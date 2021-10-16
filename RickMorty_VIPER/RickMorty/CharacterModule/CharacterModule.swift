//
//  CharacterModule.swift
//  RickMorty
//
//  Created by Kunwar on 10/13/21.
//  Copyright © 2021 Kunwar. All rights reserved.
//

import UIKit

final class CharacterModule {
    func build() -> UIViewController {
        let view = CharacterView()
        let interactor = CharacterInteractor()
        let presenter = CharacterPresenter()
        let router = CharacterRouter()
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        
        router.presenter = presenter
        router.viewController = view
        
        return view
    }
}
