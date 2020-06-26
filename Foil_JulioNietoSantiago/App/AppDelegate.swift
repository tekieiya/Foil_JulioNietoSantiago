//
//  AppDelegate.swift
//  Foil_JulioNietoSantiago
//
//  Created by Julio Nieto Santiago on 18/06/2020.
//  Copyright © 2020 Julio Nieto Santiago. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var appCoordinator: AppCoordinator!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        appCoordinator = AppCoordinator()
        appCoordinator.start()
        return true
    }
}

