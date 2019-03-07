//
//  MapRouter.swift
//  MVP Example
//
//  Created by Scott Levie on 3/6/19.
//  Copyright © 2019 SalesRabbit. All rights reserved.
//

import Foundation
import UIKit


class MapRouter: MapRouterToPresenterProtocol {

    // MARK: - Init


    init(_ view: UIViewController) {
        self.view = view
    }


    // MARK: - Routing accessors


    private weak var view: UIViewController!


    // MARK: - Module accessors


    weak var presenter: MapPresenterToRouterProtocol!
    weak var presenterToLassoOptions: MapPresenterToLassoOptionsPresenterProtocol!


    // MARK: - MapRouterToPresenterProtocol


    func presentLassoOptions() {

        guard let selectedLeadIds = self.presenter.selectedLeadIds else {
            // display an alert saying nothing was selected
            // assert the crap out of this
            return
        }

        let lassoOptionsView = LassoOptionsViewController.initFromStoryboard()
        LassoOptionsConfig(lassoOptionsView, mapPresenter: self.presenterToLassoOptions, leadIds: selectedLeadIds)
        self.view.present(lassoOptionsView, animated: true, completion: nil)
    }
}
