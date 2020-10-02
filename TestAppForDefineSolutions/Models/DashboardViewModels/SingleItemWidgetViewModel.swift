//
//  SingleItemWidgetViewModel.swift
//  TestAppForDefineSolutions
//
//  Created by Kolos on 10/1/20.
//  Copyright © 2020 Kolos. All rights reserved.
//

import Foundation
import UIKit

struct SingleItemWidgetViewModel: WidgetViewModel {
    var title: String
    var widgetType: WidgetType = .singleItem
    var image: UIImage?
    
    init(title: String) {
        self.title = title
    }
    init(title: String, image:UIImage) {
        self.title = title
        self.image = image
    }
    
    func widgetHeight() -> CGFloat {
        return 260
    }
}
