//
//  LassoOptionsRouter.swift
//  MVP Example
//
//  Created by Scott Levie on 3/6/19.
//  Copyright © 2019 SalesRabbit. All rights reserved.
//

import Foundation
import UIKit


class LassoOptionsRouter: LassoOptionsRouterToPresenterProtocol {

    // MARK: - Init


    init(_ view: UIViewController) {
        self.view = view
    }


    // MARK: - Routing accessors


    private weak var view: UIViewController!


    // MARK: - Module accessors


    weak var presenter: LassoOptionsPresenterToRouterProtocol!


    // MARK: - LassoOptionsRouterToPresenterProtocol


    func transitionToMap() {
        self.view.dismiss(animated: true, completion: nil)
    }
}
