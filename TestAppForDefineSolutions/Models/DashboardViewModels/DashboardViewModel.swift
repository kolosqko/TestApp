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
        let vm = SingleItemWidgetViewModel(title: "WIDGET", image: UIImage(named: "DashboardTabBarIcon")!)
        let cvm = CollectionWidgetViewModel()
        self.widgetsViewModels = [cvm, cvm, cvm, vm, vm, cvm, vm, vm]
    }
}





