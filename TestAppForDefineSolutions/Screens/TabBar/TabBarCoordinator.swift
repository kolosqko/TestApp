//
//  TabBarCoordinator.swift
//  TestAppForDefineSolutions
//
//  Created by Kolos on 10/1/20.
//  Copyright © 2020 Kolos. All rights reserved.
//

import Foundation
import UIKit

class TabBarCoordinator: Coordinator {
    
    private let presenter: UIViewController
    private let tabBarController: UITabBarController
    
    init(presenter: UIViewController) {
        self.presenter = presenter
        self.tabBarController = UITabBarController()
    }
    
    func start() {
        presenter.present(tabBarController, animated: false)
    }
}
