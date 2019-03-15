//
//  FirstScreenViewController.swift
//  coordinator-pattern
//
//  Created by Derrick Showers on 3/15/19.
//  Copyright © 2019 Derrick Showers. All rights reserved.
//

import UIKit

class FirstScreenViewController: UIViewController {

    let viewModel: FirstScreenViewModel

    init(viewModel: FirstScreenViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Setup label
        let label = UILabel()
        label.text = viewModel.screenTitle
        label.textAlignment = .center
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        label.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        label.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true

        // Setup background
        view.backgroundColor = viewModel.screenBackgroundColor

        // Setup continue button
        let button = UIButton()
        button.setTitle("Continue to next view controller", for: .normal)
        button.addTarget(self, action: #selector(didTapContinueButton), for: .touchUpInside)
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 100).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }

    @objc func didTapContinueButton() {
        viewModel.didTapContinue?()
    }
}
