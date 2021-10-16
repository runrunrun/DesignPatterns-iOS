//
//  CharacterPresenter.swift
//  RickMorty
//
//  Created by Kunwar on 10/13/21.
//  Copyright © 2021 Kunwar. All rights reserved.
//

import Foundation

protocol CharacterPresenterRepresentable: AnyObject {
    var view: CharacterViewRepresentable? { get set }
    var router: CharacterRouterRepresentable? { get set }
    var interactor: CharacterInteractorRepresentable? { get set }
}

final class CharacterPresenter: CharacterPresenterRepresentable {
    weak var view: CharacterViewRepresentable?
    var router: CharacterRouterRepresentable?
    var interactor: CharacterInteractorRepresentable?

}
