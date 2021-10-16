//
//  CharacterInteractor.swift
//  RickMorty
//
//  Created by Kunwar on 10/13/21.
//  Copyright © 2021 Kunwar. All rights reserved.
//

import Foundation

protocol CharacterInteractorRepresentable: AnyObject {
    var presenter: HomePresenterRepresentable? { set get }
}
    
final class CharacterInteractor: CharacterInteractorRepresentable {
    weak var presenter: HomePresenterRepresentable?
}
