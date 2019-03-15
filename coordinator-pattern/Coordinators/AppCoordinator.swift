//
//  AppCoordinator.swift
//  coordinator-pattern
//
//  Created by Derrick Showers on 3/15/19.
//  Copyright © 2019 Derrick Showers. All rights reserved.
//

import UIKit

class AppCoordinator: BaseCoordinator {

    let window: UIWindow

    init(window: UIWindow) {
        self.window = window
        super.init()
    }

    override func start() {
        let navigationController = UINavigationController()
        let firstScreenCoordinator = FirstScreenCoordinator(navigationController: navigationController)
        self.store(coordinator: firstScreenCoordinator)
        firstScreenCoordinator.start()
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        firstScreenCoordinator.isCompleted = { [weak self] in
            self?.free(coordinator: firstScreenCoordinator)
        }
    }
}
