//
//  MapPresenter.swift
//  SalesRabbit
//
//  Created by Scott Levie on 3/6/19.
//  Copyright © 2019 SalesRabbit, Inc. All rights reserved.
//

import Foundation

class MapPresenter: MapPresenterToViewProtocol, MapPresenterToRouterProtocol, MapPresenterToLassoOptionsPresenterProtocol {

    // MARK: - Init


    init(_ router: MapRouterToPresenterProtocol) {
        self.router = router
    }

    private let router: MapRouterToPresenterProtocol


    // MARK: - MapPresenterToViewProtocol


    func didTapLassoOptionsButton() {
        self.router.presentLassoOptions()
    }


    // MARK: - MapPresenterToRouterProtocol


    let selectedLeadIds: Set<String>? = [
        "123",
        "378"
    ]


    // MARK: - MapPresenterToLassoOptionsPresenterProtocol


    func createAreaWithLassoPoints() {
        print("createAreaWithLassoPoints")
    }

    func changeSelectedLeadStatuses(statusId: String) {
        print("changeSelectedLeadStatuses - statusId: \(statusId)")
    }

    func changeSelectedLeadOwners(ownerId: String) {
        print("changeSelectedLeadOwners - ownerId: \(ownerId)")
    }

    func createRouteWithSelectedLeads() {
        print("createRouteWithSelectedLeads")
    }

    func deleteSelectedLeads() {
        print("deleteSelectedLeads")
    }
}
