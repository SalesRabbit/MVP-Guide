//
//  MapConfig.swift
//  MVP Example
//
//  Created by Scott Levie on 3/6/19.
//  Copyright © 2019 SalesRabbit. All rights reserved.
//

import Foundation

class MapConfig {

    @discardableResult
    init(_ view: MapViewController) {

        let router = MapRouter(view)
        let presenter = MapPresenter(router)

        view.presenter = presenter
        router.presenter = presenter
        router.presenterToLassoOptions = presenter
    }
}
