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
    private let viewControllersInPresenter: [UIViewController]
    
    private var dashboardCoordinator: DashboardCoordinator?
    private let dashboardNavigationController: UINavigationController
    
    init(presenter: UIViewController) {
        self.presenter = presenter
        self.tabBarController = UITabBarController()
        tabBarController.tabBar.isTranslucent = false

        self.dashboardNavigationController = UINavigationController()
        dashboardNavigationController.tabBarItem.image = UIImage(named: TabBarIcons.dashboardIcon.iconImageName)
// ----------
        
        let nvc = UIViewController()
        nvc.tabBarItem.image = UIImage(named: TabBarIcons.notificationIcon.iconImageName)
        let fvc = UIViewController()
        fvc.tabBarItem.image = UIImage(named: TabBarIcons.favoritesIcon.iconImageName)
        let uvc = UIViewController()
        uvc.tabBarItem.image = UIImage(named: TabBarIcons.usersIcon.iconImageName)
        
// -----------
        
        self.viewControllersInPresenter = [dashboardNavigationController, nvc, fvc, uvc]
    }
    
    func start() {
        presenter.present(tabBarController, animated: false)
        tabBarController.viewControllers = viewControllersInPresenter
        let dashboardCoordinator = DashboardCoordinator(presenter: dashboardNavigationController)
        dashboardCoordinator.start()
        self.dashboardCoordinator = dashboardCoordinator
    }
}
