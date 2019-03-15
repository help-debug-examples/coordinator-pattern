//
//  FirstScreenCoordinator.swift
//  coordinator-pattern
//
//  Created by Derrick Showers on 3/15/19.
//  Copyright © 2019 Derrick Showers. All rights reserved.
//

import UIKit

class FirstScreenCoordinator: BaseCoordinator {

    var navigationController: UINavigationController?

    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }

    override func start() {
        let viewModel = FirstScreenViewModel()
        let viewController = FirstScreenViewController(viewModel: viewModel)
        navigationController?.pushViewController(viewController, animated: true)

        viewModel.didTapContinue = { [weak self] in
            self?.showSecondViewController()
        }
    }

    func showSecondViewController() {
        let coordinator = SecondScreenCoordinator(navigationController: navigationController)
        coordinator.start()
    }
}
