//
//  LassoOptionsInteractor.swift
//  MVP Example
//
//  Created by Scott Levie on 3/6/19.
//  Copyright © 2019 SalesRabbit. All rights reserved.
//

import Foundation


class LassoOptionsInteractor: LassoOptionsInteractorToPresenterProtocol {

    // MARK: - Init


    init(leadIds: Set<String>) {

        print("LassoOptionsInteractor received leadIds: [\(leadIds.joined(separator: ", "))]")

        // In practice the lead ids would be used to get the user data
        self.leadOwners = [
            .init(name: "George", age: 52),
            .init(name: "Steve", age: 35)
        ]
    }


    // MARK: - Module accessors


    weak var presenter: LassoOptionsPresenterToInteractorProtocol!


    // MARK: - LassoOptionsInteractorToPresenterProtocol


    let leadOwners: [LassoOptionsLeadOwner]
}
