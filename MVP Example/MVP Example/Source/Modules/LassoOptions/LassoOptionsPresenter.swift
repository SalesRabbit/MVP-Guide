//
//  LassoOptionsPresenter.swift
//  MVP Example
//
//  Created by Scott Levie on 3/6/19.
//  Copyright © 2019 SalesRabbit. All rights reserved.
//

import Foundation


class LassoOptionsPresenter: LassoOptionsPresenterToViewProtocol, LassoOptionsPresenterToInteractorProtocol, LassoOptionsPresenterToRouterProtocol {

    // MARK: - Init


    init(_ view: LassoOptionsViewToPresenterProtocol, _ interactor: LassoOptionsInteractorToPresenterProtocol, _ router: LassoOptionsRouterToPresenterProtocol, mapPresenter: MapPresenterToLassoOptionsPresenterProtocol) {

        self.view = view
        self.interactor = interactor
        self.router = router
        self.mapPresenter = mapPresenter
    }


    // MARK: - UIViewController


    func viewDidLoad() {
        let owners = self.interactor.leadOwners
        self.leadOwners = owners.sorted(by: { $0.name < $1.name })
    }


    // MARK: - Lead Owners


    private var leadOwners: [LassoOptionsLeadOwner]?


    // MARK: - Module accessors


    private weak var view: LassoOptionsViewToPresenterProtocol!
    private let interactor: LassoOptionsInteractorToPresenterProtocol
    private let router: LassoOptionsRouterToPresenterProtocol

    private weak var mapPresenter: MapPresenterToLassoOptionsPresenterProtocol!


    // MARK: - LassoOptionsPresenterToViewProtocol


    func shouldCreateArea() {
        self.mapPresenter.createAreaWithLassoPoints()
        self.router.transitionToMap()
    }

    func shouldChangeLeadOwners() {
        if let ownerId = self.view.text {
            self.mapPresenter.changeSelectedLeadOwners(ownerId: ownerId)
        }
        self.router.transitionToMap()
    }

    func shouldCreateRoute() {
        self.mapPresenter.createRouteWithSelectedLeads()
    }

    func shouldChangeLeadStatuses() {
        if let statusId = self.view.text {
            self.mapPresenter.changeSelectedLeadStatuses(statusId: statusId)
        }
        self.router.transitionToMap()
    }

    func shouldDeleteLeads() {
        self.mapPresenter.deleteSelectedLeads()
        self.router.transitionToMap()
    }

    func shouldCloseView() {
        self.router.transitionToMap()
    }
}
