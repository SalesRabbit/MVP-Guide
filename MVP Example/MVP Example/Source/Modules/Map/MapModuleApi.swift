//
//  MapModuleApi.swift
//  SalesRabbit
//
//  Created by Scott Levie on 3/6/19.
//  Copyright © 2019 SalesRabbit, Inc. All rights reserved.
//

import Foundation

// MARK: - View


protocol MapViewToPresenterProtocol: class {}


// MARK: - Presenter


protocol MapPresenterToViewProtocol: class {
    func didTapLassoOptionsButton()
}

protocol MapPresenterToInteractorProtocol: class {
    // This assumes the interactor component
}

protocol MapPresenterToRouterProtocol: class {
    var selectedLeadIds: Set<String>? { get }
}


// MARK: - Interactor


protocol MapInteractorToPresenterProtocol: class {}


// MARK: - Router


protocol MapRouterToPresenterProtocol: class {
    func presentLassoOptions()
}
