//
//  AppCoordinator.swift
//  Foil_JulioNietoSantiago
//
//  Created by Julio Nieto Santiago on 23/06/2020.
//  Copyright © 2020 Julio Nieto Santiago. All rights reserved.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    
    private let window: UIWindow
    private let navigationController: UINavigationController
    var starterCoordinator: Coordinator?
    
    init(window: UIWindow = UIWindow(),
         navigationController: UINavigationController = UINavigationController()) {
        self.window = window
        self.navigationController = navigationController
        setupWindow()
        setupStarterCoordinator()
    }
    
    func setupWindow() {
        self.window.rootViewController = navigationController
        self.window.makeKeyAndVisible()
    }
    
    func setupStarterCoordinator() {
        starterCoordinator = ArticlesCoordinator(navigationController: navigationController)
    }
    
    func start() {
        starterCoordinator?.start()
    }
}
