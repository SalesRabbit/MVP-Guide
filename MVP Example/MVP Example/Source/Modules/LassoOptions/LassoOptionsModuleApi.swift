//
//  LassoOptionsModuleApi.swift
//  MVP Example
//
//  Created by Scott Levie on 3/6/19.
//  Copyright © 2019 SalesRabbit. All rights reserved.
//

import Foundation

// MARK: - View


protocol LassoOptionsViewToPresenterProtocol: class {
    var text: String? { get }
}


// MARK: - Presenter


protocol LassoOptionsPresenterToViewProtocol: class {
    func viewDidLoad()
    func shouldCreateArea()
    func shouldChangeLeadStatuses()
    func shouldChangeLeadOwners()
    func shouldCreateRoute()
    func shouldDeleteLeads()
    func shouldCloseView()
}


protocol LassoOptionsPresenterToInteractorProtocol: class {}


protocol LassoOptionsPresenterToRouterProtocol: class {}


// MARK: - Interactor


protocol LassoOptionsInteractorToPresenterProtocol: class {
    var leadOwners: [LassoOptionsLeadOwner] { get }
}

struct LassoOptionsLeadOwner {
    let name: String
    let age: Int
}


// MARK: - Router


protocol LassoOptionsRouterToPresenterProtocol: class {
    func transitionToMap()
}


// MARK: - Delegate


protocol MapPresenterToLassoOptionsPresenterProtocol: class {
    func createAreaWithLassoPoints()
    func changeSelectedLeadStatuses(statusId: String)
    func changeSelectedLeadOwners(ownerId: String)
    func createRouteWithSelectedLeads()
    func deleteSelectedLeads()
}
