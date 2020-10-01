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
        let vm = SingleItemWidgetViewModel(title: "WIDGET")
        self.widgetsViewModels = [vm, vm, vm, vm, vm]
    }
}


protocol WidgetViewModel{
    var title: String { get }
    var widgetType: WidgetType { get }
    func widgetHeight() -> CGFloat
}

enum WidgetType {
    case singleItem
    case collection
    
    var collectionViewCellReuseIdentifier: String {
        switch self {
        case .singleItem:
            return "SingleItemWidgetCollectionViewCell"
        default:
            return ""
        }
    }
}
