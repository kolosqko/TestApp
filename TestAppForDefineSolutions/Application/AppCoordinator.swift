//
//  AppCoordinator.swift
//  TestAppForDefineSolutions
//
//  Created by Kolos on 10/1/20.
//  Copyright © 2020 Kolos. All rights reserved.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    
    private let window: UIWindow
    private let rootViewController: UIViewController
    private var tabBarCoordinator: TabBarCoordinator?
    
    init(window: UIWindow) {
        self.window = window
        self.rootViewController = UIViewController()
        
    }
    
    func start() {
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
        let tabBarCoordinator = TabBarCoordinator(presenter: self.rootViewController)
        tabBarCoordinator.start()
        self.tabBarCoordinator = tabBarCoordinator
    }
}
