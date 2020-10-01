//
//  DashboardCoordinator.swift
//  TestAppForDefineSolutions
//
//  Created by Kolos on 10/1/20.
//  Copyright © 2020 Kolos. All rights reserved.
//

import Foundation
import UIKit

class DashboardCoordinator: Coordinator {
    
    private let presenter: UINavigationController
    private var dashboardViewController: DashboardViewController?
    
    init(presenter: UINavigationController) {
        self.presenter = presenter
    }
    
    func start() {
        let dashboardViewController: DashboardViewController = DashboardViewController.instantiateViewController()
        presenter.pushViewController(dashboardViewController, animated: true)
        self.dashboardViewController = dashboardViewController
    }
}
