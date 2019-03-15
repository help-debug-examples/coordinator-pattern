//
//  AppDelegate.swift
//  coordinator-pattern
//
//  Created by Derrick Showers on 3/15/19.
//  Copyright © 2019 Derrick Showers. All rights reserved.
//

import UIKit

/**
 Testing how coordinator pattern works.
 Adapted from this article: https://benoitpasquier.com/coordinator-pattern-swift/
 */
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    private var appCoordinator: AppCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let window = UIWindow()
        let appCoordinator = AppCoordinator(window: window)
        appCoordinator.start()

        self.window = window
        self.appCoordinator = appCoordinator

        return true
    }

}

