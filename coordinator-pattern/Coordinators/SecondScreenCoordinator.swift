//
//  SecondScreenCoordinator.swift
//  coordinator-pattern
//
//  Created by Derrick Showers on 3/15/19.
//  Copyright © 2019 Derrick Showers. All rights reserved.
//

import UIKit

class SecondScreenCoordinator: BaseCoordinator {

    var navigationController: UINavigationController?

    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }

    override func start() {
        let viewModel = SecondScreenViewModel()
        let viewController = SecondScreenViewController(viewModel: viewModel)
        navigationController?.pushViewController(viewController, animated: true)
    }
}
