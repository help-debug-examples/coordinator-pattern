//
//  FirstScreenViewModel.swift
//  coordinator-pattern
//
//  Created by Derrick Showers on 3/15/19.
//  Copyright © 2019 Derrick Showers. All rights reserved.
//

import UIKit

class FirstScreenViewModel {
    let screenTitle = "First Screen!"
    let screenBackgroundColor = UIColor.blue
    var didTapContinue: (() -> Void)?
}
