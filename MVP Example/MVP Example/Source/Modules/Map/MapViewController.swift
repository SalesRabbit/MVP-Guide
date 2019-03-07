//
//  MapViewController.swift
//  MVP Example
//
//  Created by Scott Levie on 3/6/19.
//  Copyright © 2019 SalesRabbit. All rights reserved.
//

import UIKit


class MapViewController: UIViewController, MapViewToPresenterProtocol {

    // MARK: - UIViewController


    override func viewDidLoad() {
        super.viewDidLoad()

        // Configure the Map module
        MapConfig(self)
    }


    // MARK: - Module Accessors


    var presenter: MapPresenterToViewProtocol!


    // MARK: - Lasso Options


    @IBAction func didTapLassoOptionsButton(_ sender: UIButton) {
        self.presenter.didTapLassoOptionsButton()
    }
}
