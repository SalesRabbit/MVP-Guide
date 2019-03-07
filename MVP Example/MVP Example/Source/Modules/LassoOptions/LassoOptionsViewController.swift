//
//  LassoOptionsView.swift
//  MVP Example
//
//  Created by Scott Levie on 3/6/19.
//  Copyright © 2019 SalesRabbit. All rights reserved.
//

import Foundation
import UIKit


class LassoOptionsViewController: UIViewController, LassoOptionsViewToPresenterProtocol {

    // MARK: - Init


    static func initFromStoryboard() -> LassoOptionsViewController {
        let storyboard = UIStoryboard(name: "LassoOptionsView", bundle: nil)
        return storyboard.instantiateInitialViewController() as! LassoOptionsViewController
    }


    // MARK: - UIViewController


    override func viewDidLoad() {
        super.viewDidLoad()

        self.presenter.viewDidLoad()
    }


    // MARK: - Module accessors


    var presenter: LassoOptionsPresenterToViewProtocol!


    // MARK: - LassoOptionsViewToPresenterProtocol


    var text: String? {
        return self.textField.text
    }


    // MARK: - Buttons


    @IBAction private func didTapCreateAreaButton(_ sender: UIButton) {
        self.presenter.shouldCreateArea()
    }

    @IBAction private func didTapOwnershipButton(_ sender: UIButton) {
        self.presenter.shouldChangeLeadOwners()
    }

    @IBAction private func didTapRouteButton(_ sender: UIButton) {
        self.presenter.shouldCreateRoute()
    }

    @IBAction private func didTapStatusButton(_ sender: UIButton) {
        self.presenter.shouldChangeLeadStatuses()
    }

    @IBAction private func didTapDeleteButton(_ sender: UIButton) {
        self.presenter.shouldDeleteLeads()
    }

    @IBAction private func didTapDoneButton(_ sender: UIButton) {
        self.presenter.shouldCloseView()
    }


    // MARK: - Text Field


    @IBOutlet private weak var textField: UITextField!
}

