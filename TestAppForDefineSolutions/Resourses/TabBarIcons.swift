//
//  TabBarIcons.swift
//  TestAppForDefineSolutions
//
//  Created by Kolos on 10/1/20.
//  Copyright © 2020 Kolos. All rights reserved.
//

import Foundation
import UIKit

enum TabBarIcons {
    case dashboardIcon
    case notificationIcon
    case favoritesIcon
    case usersIcon
    
    var iconImageName: String {
        switch self {
        case .dashboardIcon:
            return "DashboardTabBarIcon"
        case .notificationIcon:
            return "NotificationTabBarIcon"
        case .favoritesIcon:
            return "FavoritesTabBarIcon"
        case .usersIcon:
            return "UserTabBarIcon"

        }
    }
}
