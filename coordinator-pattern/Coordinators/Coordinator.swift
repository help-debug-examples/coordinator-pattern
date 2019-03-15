//
//  Coordinator.swift
//  coordinator-pattern
//
//  Created by Derrick Showers on 3/15/19.
//  Copyright © 2019 Derrick Showers. All rights reserved.
//

import Foundation

protocol Coordinator: class {
    var childCoordinators: [Coordinator] { get set }
    func start()
}

extension Coordinator {

    func store(coordinator: Coordinator) {
        childCoordinators.append(coordinator)
    }

    func free(coordinator: Coordinator) {
        childCoordinators = childCoordinators.filter({ $0 !== coordinator })
    }
}
