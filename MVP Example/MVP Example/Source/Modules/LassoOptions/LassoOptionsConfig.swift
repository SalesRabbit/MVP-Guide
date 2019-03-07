//
//  LassoOptionsConfig.swift
//  MVP Example
//
//  Created by Scott Levie on 3/6/19.
//  Copyright © 2019 SalesRabbit. All rights reserved.
//

import Foundation

class LassoOptionsConfig {

    @discardableResult
    init(_ view: LassoOptionsViewController, mapPresenter: MapPresenterToLassoOptionsPresenterProtocol, leadIds: Set<String>) {

        // Init interactor
        let interactor = LassoOptionsInteractor(leadIds: leadIds)

        // Init router
        let router = LassoOptionsRouter(view)

        // Init presenter
        let presenter = LassoOptionsPresenter(view, interactor, router, mapPresenter: mapPresenter)

        // Connect components to presenter
        view.presenter = presenter
        interactor.presenter = presenter
        router.presenter = presenter
    }
}
