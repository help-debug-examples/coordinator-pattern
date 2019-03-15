//
//  BaseCoordinator.swift
//  coordinator-pattern
//
//  Created by Derrick Showers on 3/15/19.
//  Copyright © 2019 Derrick Showers. All rights reserved.
//

import Foundation

class BaseCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var isCompleted: (() -> Void)?

    func start() {
        fatalError("children should implement `start`.")
    }
}
