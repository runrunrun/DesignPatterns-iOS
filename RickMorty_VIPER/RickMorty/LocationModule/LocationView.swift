//
//  LocationView.swift
//  RickMorty
//
//  Created by Kunwar on 10/13/21.
//  Copyright © 2021 Kunwar. All rights reserved.
//

import UIKit

protocol LocationViewRepresentable: AnyObject {
    var presenter: LocationPresenterRepresentable? { get set }
}

final class LocationView: UIViewController, LocationViewRepresentable {
    var presenter: LocationPresenterRepresentable?
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        self.title = "Location"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
}
