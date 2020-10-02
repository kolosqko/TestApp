//
//  DashboardViewModel.swift
//  TestAppForDefineSolutions
//
//  Created by Kolos on 10/1/20.
//  Copyright © 2020 Kolos. All rights reserved.
//

import Foundation
import UIKit

class DashboardViewModel{
    let widgetsViewModels: [WidgetViewModel]
    
    init(widgets: [WidgetViewModel]) {
        self.widgetsViewModels = widgets
    }
    
    init() {
        self.widgetsViewModels = DashboardViewModel.createViewModel()
    }
    
    // method to create view models for demo
    static private func createViewModel() -> [WidgetViewModel] {
        let discoverSWidget = SingleItemWidgetViewModel(title: "Discover", image: UIImage(named: "TheLightBetweenOceansImage")!)
        let popularWidget = CollectionWidgetViewModel(title: "Popular", items: [])
        let recommendedWidget = CollectionWidgetViewModel(title: "Recommended", items: [])

        return [discoverSWidget, popularWidget, recommendedWidget]
    }
}





